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
                "CREATE TABLE snabduvachi (\r\n",
                "s# NUMERIC(5) PRIMARY KEY,\r\n",
                "ime_s VARCHAR(50) NOT NULL UNIQUE,\r\n",
                "saldo NUMERIC CHECK (saldo > 10),\r\n",
                "grad VARCHAR(50) DEFAULT 'Skopje'\r\n",
                ");"
            ],
            "metadata": {
                "azdata_cell_guid": "b57bb2e8-6651-40c9-abe8-36f51b06bec0",
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
                        "text/html": "Total execution time: 00:00:00.015"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 1
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE ace (\r\n",
                "proiz# NUMERIC(5),\r\n",
                "vid# NUMERIC(5),\r\n",
                "ime_p VARCHAR(50) NOT NULL,\r\n",
                "boja CHAR(5),\r\n",
                "tezina NUMERIC,\r\n",
                "grad_p VARCHAR(50) CHECK (grad_p IN ('London', 'Paris', 'Rome')),\r\n",
                "CONSTRAINT proizvodi_PK PRIMARY KEY (proiz#, vid#)\r\n",
                ");\r\n",
                ""
            ],
            "metadata": {
                "azdata_cell_guid": "8e8f75bd-739a-411e-8701-dcebb7449403",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "error",
                    "evalue": "Msg 2714, Level 16, State 5, Line 1\r\nThere is already an object named 'proizvodi_PK' in the database.",
                    "ename": "",
                    "traceback": []
                },
                {
                    "output_type": "error",
                    "evalue": "Msg 1750, Level 16, State 1, Line 1\r\nCould not create constraint or index. See previous errors.",
                    "ename": "",
                    "traceback": []
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.003"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 10
        },
        {
            "cell_type": "code",
            "source": [
                "CREATE TABLE ponudi (\r\n",
                "p# NUMERIC(5) PRIMARY KEY,\r\n",
                "s# NUMERIC(5) REFERENCES snabduvachi(s#)\r\n",
                "ON DELETE CASCADE ON UPDATE CASCADE,\r\n",
                "pr# NUMERIC(5),\r\n",
                "v# NUMERIC(5),\r\n",
                "kolicina_nar NUMERIC,\r\n",
                "datum_nar DATE,\r\n",
                "kolicina_isp NUMERIC,\r\n",
                "datum_isp DATE,\r\n",
                "CHECK (kolicina_isp <= kolicina_nar),\r\n",
                "CONSTRAINT ponudi_FK FOREIGN KEY (pr#, v#) REFERENCES ace(proiz#, vid#)  ON DELETE SET NULL ON UPDATE CASCADE\r\n",
                ");"
            ],
            "metadata": {
                "azdata_cell_guid": "40778ba4-acfa-4caf-96be-df260e2924a3",
                "language": "sql"
            },
            "outputs": [
                {
                    "output_type": "error",
                    "evalue": "Msg 1753, Level 16, State 0, Line 1\r\nColumn 'snabduvachi.s#' is not the same length or scale as referencing column 'ponudi.s#' in foreign key 'FK__ponudi__s#__49E3F248'. Columns participating in a foreign key relationship must be defined with the same length and scale.",
                    "ename": "",
                    "traceback": []
                },
                {
                    "output_type": "error",
                    "evalue": "Msg 1750, Level 16, State 1, Line 1\r\nCould not create constraint or index. See previous errors.",
                    "ename": "",
                    "traceback": []
                },
                {
                    "output_type": "display_data",
                    "data": {
                        "text/html": "Total execution time: 00:00:00.008"
                    },
                    "metadata": {}
                }
            ],
            "execution_count": 7
        }
    ]
}