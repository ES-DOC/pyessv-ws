# -*- coding: utf-8 -*-

"""
.. module:: handlers.heartbeat.py
   :license: GPL/CeCIL
   :platform: Unix
   :synopsis: ES-DOC pyessv - heartbeat endpoint.

.. moduleauthor:: Mark Conway-Greenslade <momipsl@ipsl.jussieu.fr>


"""
import datetime as dt

import tornado

import pyessv
import pyessv_ws
from pyessv_ws.utils.http import process_request



class HeartbeatRequestHandler(tornado.web.RequestHandler):
    """Operations heartbeat request handler.

    """
    def get(self):
        """HTTP GET handler.

        """
        def _set_output():
            """Sets response to be returned to client.

            """
            self.output = {
                "message": "ES-DOC PYESSV web service (v{}) is operational @ {}".format(pyessv_ws.__version__, dt.datetime.utcnow()),
            }

        # Process request.
        process_request(self, _set_output)
