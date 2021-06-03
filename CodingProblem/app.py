import dash
import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output
import plotly.express as px
import pandas as pd
import plotly.graph_objects as go

df = px.data.gapminder().query("country=='Canada'")
fig = px.line(df, x="year", y="lifeExp", title='Life expectancy in Canada')
app = dash.Dash(__name__, external_stylesheets=[dbc.themes.BOOTSTRAP])
 #Filler..., would be replaced with actual OSA data that was not provided


app.layout = html.Div([
     dbc.Nav(
            [
                dbc.NavLink("START", href="http://flaskosa.herokuapp.com/cmd/START"),
                dbc.NavLink("STOP", href="http://flaskosa.herokuapp.com/cmd/STOP"),
                dbc.NavLink("SINGLE", href="http://flaskosa.herokuapp.com/cmd/SINGLE"),
                dbc.NavLink("STATE", href="http://flaskosa.herokuapp.com/cmd/STATE"),
                dbc.NavLink("TRACE", href="http://flaskosa.herokuapp.com/cmd/TRACE"),
                dbc.NavLink("PING", href="http://flaskosa.herokuapp.com/cmd/PING"),

                dbc.NavLink("ECHO", href="http://flaskosa.herokuapp.com/ECHO/string"),
                dbc.NavLink("LIM/ MinMax", href="http://flaskosa.herokuapp.com/cmd/LIM/[min max]"),
                dbc.NavLink("LIM", href="http://flaskosa.herokuapp.com/cmd/LIM"),
                dbc.NavLink("IDN", href="http://flaskosa.herokuapp.com/cmd/IDN"),
                dbc.NavLink("RETURN", href="http://flaskosa.herokuapp.com/cmd"),
                
            ], 
            
             fill=True,
             justified=True,
            
            
        ),
        html.Br(),
        html.P(id="button-clicks"),
        dbc.Row(dbc.Col(html.H3("CLOUD  OSA"),
                        width={'size': 7, 'offset': 5},
                        ),
                ),
        dbc.Row(dbc.Col(html.Div("File submission for CLOUD OSA assignment Ciena. Project took around 5.5 hours because I had no prior Python experience" ),
                        width=7
                        )
                ),
        dbc.Row(
            [
               
                dbc.Col(dcc.Dropdown(id='a_dropdown', placeholder='Commands',
                                     options=[{'label': 'Return', 'value': 'http://flaskosa.herokuapp.com/cmd/ '},
                                             {'label': 'return device identification string', 'value': 'http://flaskosa.herokuapp.com/cmd/IDN'},
                                             {'label': 'return x-axis limits in m', 'value': 'http://flaskosa.herokuapp.com/cmd/LIM '},
                                             {'label': 'set x-axis limits in nm', 'value': 'http://flaskosa.herokuapp.com/cmd/LIM/[min max] '},
                                             {'label': 'Emulate query command and sends a string to API', 'value': 'http://flaskosa.herokuapp.com/cmd/ECHO/string '},
                                             {'label': 'Return PONG', 'value': 'http://flaskosa.herokuapp.com/cmd/PING '},
                                             {'label': 'set instrument state to continues acquisition', 'value': 'http://flaskosa.herokuapp.com/cmd/START '},
                                             {'label': 'set instrument state to IDLE', 'value': 'http://flaskosa.herokuapp.com/cmd/STOP '},
                                             {'label': 'start a single scan', 'value': 'http://flaskosa.herokuapp.com/cmd/SINGLE '},
                                             {'label': 'return instrument state', 'value': 'http://flaskosa.herokuapp.com/cmd/STATE'},
                                             {'label': 'return OSA trace', 'value': 'http://flaskosa.herokuapp.com/cmd/TRACE'}]),
                        width={'size': 6, "offset": 1, 'order': 1}
                        ), 
                
            ], no_gutters=True
        ),
        html.Div(id='dd-output-container'),
        dbc.Button("Start", id="button1", className="mr-2"),
        html.Span(id="output1", style={"vertical-align": "middle"}
        ),
        dbc.Button("Stop", id="button2", className="mr-2"),
        html.Span(id="stop", style={"vertical-align": "middle"}
        ),
         dbc.Button("Trace", id="example-button", className="mr-2"),
        html.Span(id="example-output", style={"vertical-align": "middle"}
        ),                                                                                              
        
        dcc.Graph(figure=fig)
           
        
])

@app.callback(
    Output("button1", "children"), [Input("button1", "n_clicks")]
)
def on_button_click(n):
    if n is None:
        return "Start"
    else:
        return f"Getting Information..."


@app.callback(
    dash.dependencies.Output('dd-output-container', 'children'),
    [dash.dependencies.Input('a_dropdown', 'value')])
def update_output(value):
    return 'You have selected "{}"'.format(value)

if __name__ == "__main__":
    app.run_server(debug=True)
