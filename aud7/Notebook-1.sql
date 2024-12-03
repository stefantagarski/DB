{
    "metadata": {
        "kernelspec": {
            "name": "SQL",
            "display_name": "SQL",
            "language": "sql"
        },
        "language_info": {
            "name": "sql",
            "version": ""
        }
    },
    "nbformat_minor": 2,
    "nbformat": 4,
    "cells": [
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE Market (\r\n",
                "    ID INT PRIMARY KEY\r\n",
                ");"
            ],
            "metadata": {
                "azdata_cell_guid": "2a5b22b3-3047-442f-acbb-5152b107f795",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "error",
                    "evalue": "Msg 2714, Level 16, State 6, Line 1\r\nThere is already an object named 'Market' in the database.",
                    "ename": "",
                    "traceback": []
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.002"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 6
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE Sepcijalitet (\r\n",
                "    kod INT PRIMARY KEY\r\n",
                ");"
            ],
            "metadata": {
                "language": "sql",
                "azdata_cell_guid": "2d2016e7-b3da-431d-a602-bbf2402b4eed"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully."
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.014"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 2
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE Korisnik (\r\n",
                "    ID INT PRIMARY KEY,\r\n",
                "    korisnichkoIme VARCHAR(50),\r\n",
                "    lozinka VARCHAR(20) ,\r\n",
                "    email VARCHAR(50)\r\n",
                ");"
            ],
            "metadata": {
                "azdata_cell_guid": "3ad9ea0b-939c-42b4-8ba5-d3bc374dbe0d",
                "language": "sql",
                "tags": []
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully."
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.015"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 3
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE Narachka (\r\n",
                "    ID INT PRIMARY KEY,\r\n",
                "    marketID INT REFERENCES Market(id)\r\n",
                "    ON DELETE CASCADE ON UPDATE CASCADE,\r\n",
                "    specijalitetKod INT REFERENCES Sepcijalitet(kod)\r\n",
                "    ON DELETE CASCADE ON UPDATE CASCADE,\r\n",
                "    korisnikID INT REFERENCES Korisnik(ID)\r\n",
                "    ON DELETE SET NULL ON UPDATE CASCADE,\r\n",
                "    datum DATE CHECK (datum >= '2010-10-20')\r\n",
                ");"
            ],
            "metadata": {
                "azdata_cell_guid": "ddcb8b65-4e81-4d29-b7fd-3d74261cb6e7",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully."
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.017"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 4
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE AdresiDostava(\r\n",
                "    narachkaId INT,    \r\n",
                "    adresa VARCHAR(50) CHECK(adresa LIKE '%-%/%'),\r\n",
                "    FOREIGN KEY (narachkaId) REFERENCES Narachka(ID)\r\n",
                "    ON DELETE CASCADE ON UPDATE CASCADE,\r\n",
                "    PRIMARY KEY (narachkaId, adresa),\r\n",
                "\r\n",
                ");"
            ],
            "metadata": {
                "azdata_cell_guid": "30286ebb-b064-40f8-bf42-824c13e99c41",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Commands completed successfully."
                    },
                    "metadata": {}
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.017"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 5
        }
    ]
}