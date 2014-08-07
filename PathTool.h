/*
 *  The Simple Earth Project
 *  Copyright (C) 2014 HueSoft LLC
 *  Author: Hector Mendoza, hector.mendoza@huesoftllc.com
 *
 *  This file is part of the Simple Earth Project.
 *
 *  The Simple Earth Project is free software: you can redistribute it
 *  and/or modify it under the terms of the GNU Lesser General Public
 *  License as published by the Free Software Foundation, either version
 *  3 of the License, or (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 *  Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public
 *  License along with this program. If not, see
 *  <http://www.gnu.org/licenses/>.
 */

#ifndef PATH_TOOL_H
#define PATH_TOOL_H

#include <QMouseEvent>
#include "Tool.h"
#include "globals.h"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/**
 * This class encapsulates the functionality behind path tool rendering. This
 * class inherits from WorldObject.
 *
 * @version 1.0
 * @author Hector Mendoza
 */
class PathTool : public Tool
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
{
  public:
    PathTool(QToolButton* toolButton = 0, QDialog* dialog = 0);
    ~PathTool();

    void render();//OVERRIDE
    void initialize();
    void setName(QString name);
    bool addCurrent();
    void setColor(SimpleColor color);
    void onMouseReleaseEvent(QMouseEvent* event);

  private:
    SimpleVector mPointList[50];
    int mCurrentNumberOfPoints;
    ScreenCoordinates mClickCordinates;
    bool mAddPoint;
    QString mName;
    SimpleColor mColor;
};

#endif//PATH_TOOL_H
