# -*- coding: utf-8 -*-

"""
.. module:: run.py
   :license: GPL/CeCIL
   :platform: Unix, Windows
   :synopsis: Runs the web-service.

.. moduleauthor:: Mark A. Greenslade

"""
import sys

import pyessv_ws



def _main():
    """Main entry point.

    """
    # Run web service.
    try:
        pyessv_ws.run()

    # Handle unexpected exceptions.
    except Exception as err:
        # Ensure that web-service is stopped.
        try:
            pyessv_ws.stop()
        except:
            pass

        # Simple log to stdout.
        print(err)

    # Signal exit.
    finally:
        sys.exit()


# Main entry point.
if __name__ == '__main__':
    _main()
