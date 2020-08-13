# Code
## How to Run
### Schema.sql
<ol>
	<li>
		Open an instance of pgAdmin.
	</li>
	<li>
		Open or create a PostgresSQL database and run <a href="schema.sql">schema.sql</a>.
	</li>
	<li>
		In the sidebar under the database that ran schema.sql, open Schemas > public > Tables.
		There should be 6 tables.  A refresh might be required by Right Click > Refresh.
		For each table, import the corresponding file from the <a href="../data">data folder</a>.
		Import by Right Click on table > Import/Export, then in the Options window do the following:
		<ol>
			<li>Toggle the Import/Export option to the Import option</li>
			<li>In the filename field, import the data file corresponding to the SQL table.</li>
			<li>Toggle the Header option to Yes</li>
			<li>Everything should be good to go, so press OK.</li>
		</ol>
		The tables should be imported in the following order:
		<table>
			<tr>
				<th>Number</th>
				<th>SQL Table</th>
				<th>Data File</th>
			</tr>
			<tr>
				<td>1</td>
				<td>departments</td>
				<td>departments.csv</td>
			</tr>
			<tr>
				<td>2</td>
				<td>titles</td>
				<td>titles.csv</td>
			</tr>
			<tr>
				<td>3</td>
				<td>employees</td>
				<td>employees.csv</td>
			</tr>
			<tr>
				<td>4</td>
				<td>salaries</td>
				<td>salaries.csv</td>
			</tr>
			<tr>
				<td>5</td>
				<td>department-employees</td>
				<td>dept_emp.csv</td>
			</tr>
			<tr>
				<td>6</td>
				<td>department-managers</td>
				<td>dept_manager.csv</td>
			</tr>
		</table>
	</li>
</ol>

### Analysis.sql
<ol>
	<li>
		Make sure to run the instructions under Schema.sql first to populate the tables in your database.
	</li>
	<li>
		Open <a href="analysis.sql">analysis.sql</a> and run each command individually.
		Commands can be run individually by highlighting the command and either pressing the play button or by pressing the F5 key.
	</li>
</ol>

### Analysis_Bonus.ipynb
<ol>
	<li>
		Make sure to run the instructions under Schema.sql first to populate the tables in your database.
	</li>
	<li>
	    In the code folder, create a file called config.py. In this file, define two variables:
	    <ul>
	      <li><i>database</i> will be your database that contains your tables.</li>
	      <li><i>username</i> will be your PostgresSQL username.</li>
	      <li><i>password</i> will be your PostgresSQL password.</li>
	    </ul>
	  </li>
	  <li>In the terminal, initialize an Anaconda environment using "source activate <i>{your environment}</i>".</li>
	  <li>Open Jupyter Notebook using "jupyter notebook" in the terminal.</li>
	  <li>In the Jupyter Notebook, open the ipynb file that contains the code.</li>
	  <li>
	    With the code open, you have two options on how to run the code:
	    <ul>
	      <li>
		In the menu bar open Kernel > Restart and Clear Output.  Then you can use Shift+Enter to run the code one block at a time.
	      </li>
	      <li>In the menu bar open Kernel > Restart and Run All.  This will run all of the blocks of code at once.</li>
	    </ul>
	  </li>
</ol>
