.class public Lcom/android/calendar/EventGeometry;
.super Ljava/lang/Object;
.source "EventGeometry.java"


# instance fields
.field private mCellMargin:I

.field private mHourGap:F

.field private mMinEventHeight:F

.field private mMinuteHeight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:I

    return-void
.end method


# virtual methods
.method computeAllDayEventRect(IIIILcom/android/calendar/Event;)Z
    .locals 15
    .parameter "date"
    .parameter "left"
    .parameter "top"
    .parameter "cellWidth"
    .parameter "event"

    .prologue
    .line 48
    iget v2, p0, Lcom/android/calendar/EventGeometry;->mMinuteHeight:F

    .line 49
    .local v2, cellMinuteHeight:F
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move v9, v0

    .line 50
    .local v9, startDay:I
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move v5, v0

    .line 52
    .local v5, endDay:I
    move v0, v9

    move/from16 v1, p1

    if-gt v0, v1, :cond_0

    move v0, v5

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 53
    :cond_0
    const/4 v12, 0x0

    .line 90
    :goto_0
    return v12

    .line 56
    :cond_1
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move v11, v0

    .line 57
    .local v11, startTime:I
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move v7, v0

    .line 59
    .local v7, endTime:I
    move v0, v9

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    .line 60
    const/4 v11, 0x0

    .line 63
    :cond_2
    move v0, v5

    move/from16 v1, p1

    if-le v0, v1, :cond_3

    .line 64
    const/16 v7, 0x5a0

    .line 67
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getColumn()I

    move-result v3

    .line 68
    .local v3, col:I
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getMaxColumns()I

    move-result v8

    .line 69
    .local v8, maxCols:I
    div-int/lit8 v10, v11, 0x3c

    .line 70
    .local v10, startHour:I
    div-int/lit8 v6, v7, 0x3c

    .line 72
    .local v6, endHour:I
    mul-int/lit8 v12, v6, 0x3c

    if-ne v12, v7, :cond_4

    .line 73
    add-int/lit8 v6, v6, -0x1

    .line 75
    :cond_4
    move/from16 v0, p3

    int-to-float v0, v0

    move v12, v0

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->top:F

    .line 76
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move v12, v0

    int-to-float v13, v11

    mul-float/2addr v13, v2

    float-to-int v13, v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->top:F

    .line 77
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move v12, v0

    int-to-float v13, v10

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->top:F

    .line 79
    move/from16 v0, p3

    int-to-float v0, v0

    move v12, v0

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->bottom:F

    .line 80
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move v12, v0

    int-to-float v13, v7

    mul-float/2addr v13, v2

    float-to-int v13, v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->bottom:F

    .line 81
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move v12, v0

    int-to-float v13, v6

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->bottom:F

    .line 83
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move v12, v0

    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move v13, v0

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 84
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move v12, v0

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->bottom:F

    .line 87
    :cond_5
    iget v12, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:I

    mul-int/lit8 v12, v12, 0x2

    sub-int v12, p4, v12

    int-to-float v12, v12

    int-to-float v13, v8

    div-float v4, v12, v13

    .line 88
    .local v4, colWidth:F
    iget v12, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:I

    add-int v12, v12, p2

    int-to-float v12, v12

    int-to-float v13, v3

    mul-float/2addr v13, v4

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->left:F

    .line 89
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move v12, v0

    add-float/2addr v12, v4

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->right:F

    .line 90
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method computeEventRect(IIIILcom/android/calendar/Event;)Z
    .locals 15
    .parameter "date"
    .parameter "left"
    .parameter "top"
    .parameter "cellWidth"
    .parameter "event"

    .prologue
    .line 96
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    move v12, v0

    if-eqz v12, :cond_0

    .line 97
    const/4 v12, 0x0

    .line 150
    :goto_0
    return v12

    .line 100
    :cond_0
    iget v2, p0, Lcom/android/calendar/EventGeometry;->mMinuteHeight:F

    .line 101
    .local v2, cellMinuteHeight:F
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move v9, v0

    .line 102
    .local v9, startDay:I
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move v5, v0

    .line 104
    .local v5, endDay:I
    move v0, v9

    move/from16 v1, p1

    if-gt v0, v1, :cond_1

    move v0, v5

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    .line 105
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 108
    :cond_2
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move v11, v0

    .line 109
    .local v11, startTime:I
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move v7, v0

    .line 113
    .local v7, endTime:I
    move v0, v9

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    .line 114
    const/4 v11, 0x0

    .line 119
    :cond_3
    move v0, v5

    move/from16 v1, p1

    if-le v0, v1, :cond_4

    .line 120
    const/16 v7, 0x5a0

    .line 123
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getColumn()I

    move-result v3

    .line 124
    .local v3, col:I
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getMaxColumns()I

    move-result v8

    .line 125
    .local v8, maxCols:I
    div-int/lit8 v10, v11, 0x3c

    .line 126
    .local v10, startHour:I
    div-int/lit8 v6, v7, 0x3c

    .line 131
    .local v6, endHour:I
    mul-int/lit8 v12, v6, 0x3c

    if-ne v12, v7, :cond_5

    .line 132
    add-int/lit8 v6, v6, -0x1

    .line 134
    :cond_5
    move/from16 v0, p3

    int-to-float v0, v0

    move v12, v0

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->top:F

    .line 135
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move v12, v0

    int-to-float v13, v11

    mul-float/2addr v13, v2

    float-to-int v13, v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->top:F

    .line 136
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move v12, v0

    int-to-float v13, v10

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->top:F

    .line 138
    move/from16 v0, p3

    int-to-float v0, v0

    move v12, v0

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->bottom:F

    .line 139
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move v12, v0

    int-to-float v13, v7

    mul-float/2addr v13, v2

    float-to-int v13, v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->bottom:F

    .line 140
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move v12, v0

    int-to-float v13, v6

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->bottom:F

    .line 143
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move v12, v0

    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move v13, v0

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    .line 144
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move v12, v0

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->bottom:F

    .line 147
    :cond_6
    iget v12, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:I

    mul-int/lit8 v12, v12, 0x2

    sub-int v12, p4, v12

    int-to-float v12, v12

    int-to-float v13, v8

    div-float v4, v12, v13

    .line 148
    .local v4, colWidth:F
    iget v12, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:I

    add-int v12, v12, p2

    int-to-float v12, v12

    int-to-float v13, v3

    mul-float/2addr v13, v4

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->left:F

    .line 149
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move v12, v0

    add-float/2addr v12, v4

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->right:F

    .line 150
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "event"
    .parameter "selection"

    .prologue
    .line 157
    iget v0, p1, Lcom/android/calendar/Event;->left:F

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/android/calendar/Event;->right:F

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/calendar/Event;->top:F

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/android/calendar/Event;->bottom:F

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pointToEvent(FFLcom/android/calendar/Event;)F
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    .line 168
    iget v3, p3, Lcom/android/calendar/Event;->left:F

    .line 169
    .local v3, left:F
    iget v4, p3, Lcom/android/calendar/Event;->right:F

    .line 170
    .local v4, right:F
    iget v5, p3, Lcom/android/calendar/Event;->top:F

    .line 171
    .local v5, top:F
    iget v0, p3, Lcom/android/calendar/Event;->bottom:F

    .line 173
    .local v0, bottom:F
    cmpl-float v6, p1, v3

    if-ltz v6, :cond_5

    .line 174
    cmpg-float v6, p1, v4

    if-gtz v6, :cond_2

    .line 175
    cmpl-float v6, p2, v5

    if-ltz v6, :cond_1

    .line 176
    cmpg-float v6, p2, v0

    if-gtz v6, :cond_0

    .line 178
    const/4 v6, 0x0

    .line 215
    :goto_0
    return v6

    .line 181
    :cond_0
    sub-float v6, p2, v0

    goto :goto_0

    .line 184
    :cond_1
    sub-float v6, v5, p2

    goto :goto_0

    .line 188
    :cond_2
    sub-float v1, p1, v4

    .line 189
    .local v1, dx:F
    cmpg-float v6, p2, v5

    if-gez v6, :cond_3

    .line 191
    sub-float v2, v5, p2

    .line 192
    .local v2, dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_0

    .line 194
    .end local v2           #dy:F
    :cond_3
    cmpl-float v6, p2, v0

    if-lez v6, :cond_4

    .line 196
    sub-float v2, p2, v0

    .line 197
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_0

    .end local v2           #dy:F
    :cond_4
    move v6, v1

    .line 200
    goto :goto_0

    .line 203
    .end local v1           #dx:F
    :cond_5
    sub-float v1, v3, p1

    .line 204
    .restart local v1       #dx:F
    cmpg-float v6, p2, v5

    if-gez v6, :cond_6

    .line 206
    sub-float v2, v5, p2

    .line 207
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_0

    .line 209
    .end local v2           #dy:F
    :cond_6
    cmpl-float v6, p2, v0

    if-lez v6, :cond_7

    .line 211
    sub-float v2, p2, v0

    .line 212
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_0

    .end local v2           #dy:F
    :cond_7
    move v6, v1

    .line 215
    goto :goto_0
.end method

.method setCellMargin(I)V
    .locals 0
    .parameter "cellMargin"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:I

    .line 32
    return-void
.end method

.method setHourGap(F)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    .line 36
    return-void
.end method

.method setHourHeight(F)V
    .locals 1
    .parameter "height"

    .prologue
    .line 43
    const/high16 v0, 0x4270

    div-float v0, p1, v0

    iput v0, p0, Lcom/android/calendar/EventGeometry;->mMinuteHeight:F

    .line 44
    return-void
.end method

.method setMinEventHeight(F)V
    .locals 0
    .parameter "height"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    .line 40
    return-void
.end method
