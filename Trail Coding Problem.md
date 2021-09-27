# Modelling the domain

We're going to model the core domain of a company called _Food Co_ with a view to rendering a timeline that staff at this company might see.

## How will it work?

Trail allows organizations to represent their hierarchy, e.g. here is a common hierarchy we support:

```
                        Food Co
               +-----+(Organization)+-----+
               |                          |
               +                          +
            London                     Cardiff
     +-----+(Area)+------+             (Area)
     |                   |
     +                   +
Regent Street     Baker Street
(Location)         (Location)
```

A timeline exists for each entity in the hierarchy which can have tasks added to it. For the above hierarchy we have five timelines:

* Food Co (Organization timeline)
* London (Area timeline)
* Cardiff (Area timeline)
* Regent Street (Location timeline)
* Baker Street (Location timeline)

Finally, the tasks cascade down the hierarchy, For the above hierarchy, the following is true:

* The _London_ and _Cardiff_ timelines have all of the tasks from the _Food Co_ timeline, as well as their own tasks.
* The _Regent Street_ and _Baker Street_ timelines would have all of the tasks from the _London_ and _Food Co_ timelines, as well as their own task.

## An example

If we imagine the timelines above each have some tasks on them, e.g.:

```
Food Co (Organization)         London (Area)           Regent Street (Location)
+-------------------------+  +--------------------+  +----------------------+
* Forecast today's sales     * Pay London charges    * Organize supplies
* Conduct safety check                               * Clean front of house
* Pay supplier bills

```

The _Regent Street_ timeline for the day that users see would look like this:

```
Regent Street Timeline
------------------------
* Forecast today's Sales
* Conduct safety check
* Pay supplier bills
* Pay London charges
* Organize supplies
* Clean front of house
```

## What we'll do

We are going to focus on displaying a timeline (in ASCII format) for a location (e.g. `Regent Street` from the above hierarchy).
