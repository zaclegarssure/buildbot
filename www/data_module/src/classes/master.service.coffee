class Master
    constructor: (Base, dataService) ->
        return class MasterInstance extends Base
            constructor: (object, endpoint) ->
                endpoints = [
                    'builders'          # /builders/:builderid
                    'workers'           # /workers/:workerid
                                        # /workers/:name
                    'changesources'     # /changesources/:changesourceid
                    'schedulers'        # /schedulers/:schedulerid
                ]

                super(object, endpoint, endpoints)


angular.module('app')
.factory('Master', ['Base', 'dataService', Master])