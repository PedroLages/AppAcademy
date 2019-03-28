# Self Joins

### What is a self join?

A self join is exactly what it sounds like: an instance of a table joining with itself. The way you should visualize a self join for a given table is by imagining a join performed between two identical copies of that table.

Let's take a look at a classic self-join example. This returns each employee's first and last name along with their manager's.

##### Employee Table

<table>

<thead>

<tr>

<th style="text-align: left;">id</th>

<th style="text-align: left;">first_name</th>

<th style="text-align: left;">last_name</th>

<th style="text-align: left;">manager_id</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align: left;">1</td>

<td style="text-align: left;">Kush</td>

<td style="text-align: left;">Patel</td>

<td style="text-align: left;">NULL</td>

</tr>

<tr>

<td style="text-align: left;">2</td>

<td style="text-align: left;">Jeff</td>

<td style="text-align: left;">Fiddler</td>

<td style="text-align: left;">1</td>

</tr>

<tr>

<td style="text-align: left;">3</td>

<td style="text-align: left;">Quinn</td>

<td style="text-align: left;">Leong</td>

<td style="text-align: left;">2</td>

</tr>

<tr>

<td style="text-align: left;">4</td>

<td style="text-align: left;">Shamayel</td>

<td style="text-align: left;">Daoud</td>

<td style="text-align: left;">2</td>

</tr>

<tr>

<td style="text-align: left;">5</td>

<td style="text-align: left;">Robert</td>

<td style="text-align: left;">Koeze</td>

<td style="text-align: left;">4</td>

</tr>

<tr>

<td style="text-align: left;">6</td>

<td style="text-align: left;">Munyo</td>

<td style="text-align: left;">Frey</td>

<td style="text-align: left;">3</td>

</tr>

<tr>

<td style="text-align: left;">7</td>

<td style="text-align: left;">Kelly</td>

<td style="text-align: left;">Chung</td>

<td style="text-align: left;">4</td>

</tr>

</tbody>

</table>

    SELECT
      team_member.first_name, team_member.last_name,
       manager.first_name, manager.last_name
    FROM
      employee AS team_member
    JOIN
      employee AS manager ON manager.id = team_member.manager_id

<table>

<thead>

<tr>

<th style="text-align: left;">team_member.first_name</th>

<th style="text-align: left;">team_member.last_name</th>

<th style="text-align: left;">manager.first_name</th>

<th style="text-align: left;">manager.last_name</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align: left;">Jeff</td>

<td style="text-align: left;">Fiddler</td>

<td style="text-align: left;">Kush</td>

<td style="text-align: left;">Patel</td>

</tr>

<tr>

<td style="text-align: left;">Quinn</td>

<td style="text-align: left;">Leong</td>

<td style="text-align: left;">Jeff</td>

<td style="text-align: left;">Fiddler</td>

</tr>

<tr>

<td style="text-align: left;">Shamayel</td>

<td style="text-align: left;">Daoud</td>

<td style="text-align: left;">Jeff</td>

<td style="text-align: left;">Fiddler</td>

</tr>

<tr>

<td style="text-align: left;">Robert</td>

<td style="text-align: left;">Koeze</td>

<td style="text-align: left;">Shamayel</td>

<td style="text-align: left;">Daoud</td>

</tr>

<tr>

<td style="text-align: left;">Munyo</td>

<td style="text-align: left;">Frey</td>

<td style="text-align: left;">Quinn</td>

<td style="text-align: left;">Leong</td>

</tr>

<tr>

<td style="text-align: left;">Kelly</td>

<td style="text-align: left;">Chung</td>

<td style="text-align: left;">Shamayel</td>

<td style="text-align: left;">Daoud</td>

</tr>

</tbody>

</table>

In all the examples you've covered thus far, JOINs were performed on two different tables (presumably with two different names), which made it easy to reference a specific column in a table. Since we only deal with one table in a self join, we have to use **aliases**.

An alias is essentially a nickname for a table (or, in some cases, a column). This is necessary because the query processor needs to make a distinction between the duplicates of the same table to JOIN them. Keep in mind, the keyword **AS** is not necessary to alias tables or columns. The above SQL query could be rewritten:

    SELECT
      team_member.first_name, team_member.last_name,
       manager.first_name, manager.last_name
    FROM
      employee team_member
    JOIN
      employee manager ON manager.id = team_member.manager_id

