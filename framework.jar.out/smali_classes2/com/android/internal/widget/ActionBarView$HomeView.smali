.class Lcom/android/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# static fields
.field private static final DEFAULT_TRANSITION_DURATION:J = 0x96L


# instance fields
.field private mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mStartOffset:I

.field private mStartOffset2:I

.field private mUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mUpIndicatorRes:I

.field private mUpView:Landroid/widget/ImageView;

.field private mUpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1419
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1420
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1423
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1424
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 1425
    .local v0, "t":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_0

    .line 1427
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 1429
    :cond_0
    return-void
.end method

.method private updateUpIndicator()V
    .locals 3

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1468
    :goto_0
    return-void

    .line 1463
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_1

    .line 1464
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1466
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1497
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1481
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1482
    const/4 v0, 0x1

    return v0
.end method

.method public getStartOffset()I
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1510
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartOffset2()I
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1517
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset2:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUpWidth()I
    .locals 1

    .prologue
    .line 1521
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1472
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1473
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_0

    .line 1475
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1477
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 1502
    const v0, 0x102003b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    .line 1503
    const v0, 0x102002c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1504
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1505
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1579
    sub-int v25, p5, p3

    div-int/lit8 v23, v25, 0x2

    .line 1580
    .local v23, "vCenter":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->isLayoutRtl()Z

    move-result v13

    .line 1581
    .local v13, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getWidth()I

    move-result v24

    .line 1582
    .local v24, "width":I
    const/16 v19, 0x0

    .line 1583
    .local v19, "upOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout$LayoutParams;

    .line 1585
    .local v18, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v16

    .line 1586
    .local v16, "upHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v22

    .line 1587
    .local v22, "upWidth":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v25, v25, v22

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v19, v25, v26

    .line 1588
    div-int/lit8 v25, v16, 0x2

    sub-int v21, v23, v25

    .line 1589
    .local v21, "upTop":I
    add-int v15, v21, v16

    .line 1592
    .local v15, "upBottom":I
    if-eqz v13, :cond_2

    .line 1593
    move/from16 v20, v24

    .line 1596
    .local v20, "upRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 1597
    sub-int v25, v20, v22

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    sub-int v17, v25, v26

    .line 1602
    .local v17, "upLeft":I
    :goto_0
    sub-int p4, p4, v19

    .line 1617
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1620
    .end local v15    # "upBottom":I
    .end local v16    # "upHeight":I
    .end local v17    # "upLeft":I
    .end local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "upRight":I
    .end local v21    # "upTop":I
    .end local v22    # "upWidth":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1621
    .local v9, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    .line 1622
    .local v7, "iconHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v12

    .line 1623
    .local v12, "iconWidth":I
    sub-int v25, p4, p2

    div-int/lit8 v5, v25, 0x2

    .line 1624
    .local v5, "hCenter":I
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v25, v0

    div-int/lit8 v26, v7, 0x2

    sub-int v26, v23, v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1625
    .local v11, "iconTop":I
    add-int v6, v11, v7

    .line 1628
    .local v6, "iconBottom":I
    invoke-virtual {v9}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v14

    .line 1629
    .local v14, "marginStart":I
    div-int/lit8 v25, v12, 0x2

    sub-int v25, v5, v25

    move/from16 v0, v25

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1630
    .local v4, "delta":I
    if-eqz v13, :cond_4

    .line 1631
    sub-int v25, v24, v19

    sub-int v10, v25, v4

    .line 1632
    .local v10, "iconRight":I
    sub-int v8, v10, v12

    .line 1637
    .local v8, "iconLeft":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v11, v10, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1638
    return-void

    .line 1599
    .end local v4    # "delta":I
    .end local v5    # "hCenter":I
    .end local v6    # "iconBottom":I
    .end local v7    # "iconHeight":I
    .end local v8    # "iconLeft":I
    .end local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "iconRight":I
    .end local v11    # "iconTop":I
    .end local v12    # "iconWidth":I
    .end local v14    # "marginStart":I
    .restart local v15    # "upBottom":I
    .restart local v16    # "upHeight":I
    .restart local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v20    # "upRight":I
    .restart local v21    # "upTop":I
    .restart local v22    # "upWidth":I
    :cond_1
    sub-int v17, v20, v22

    .restart local v17    # "upLeft":I
    goto :goto_0

    .line 1607
    .end local v17    # "upLeft":I
    .end local v20    # "upRight":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 1608
    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v20, v22, v25

    .line 1609
    .restart local v20    # "upRight":I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    .line 1615
    .restart local v17    # "upLeft":I
    :goto_3
    add-int p2, p2, v19

    goto/16 :goto_1

    .line 1611
    .end local v17    # "upLeft":I
    .end local v20    # "upRight":I
    :cond_3
    move/from16 v20, v22

    .line 1612
    .restart local v20    # "upRight":I
    const/16 v17, 0x0

    .restart local v17    # "upLeft":I
    goto :goto_3

    .line 1634
    .end local v15    # "upBottom":I
    .end local v16    # "upHeight":I
    .end local v17    # "upLeft":I
    .end local v18    # "upLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v20    # "upRight":I
    .end local v21    # "upTop":I
    .end local v22    # "upWidth":I
    .restart local v4    # "delta":I
    .restart local v5    # "hCenter":I
    .restart local v6    # "iconBottom":I
    .restart local v7    # "iconHeight":I
    .restart local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "iconTop":I
    .restart local v12    # "iconWidth":I
    .restart local v14    # "marginStart":I
    :cond_4
    add-int v8, v19, v4

    .line 1635
    .restart local v8    # "iconLeft":I
    add-int v10, v8, v12

    .restart local v10    # "iconRight":I
    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1526
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1527
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1528
    .local v10, "upLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v11, v0, v1

    .line 1529
    .local v11, "upMargins":I
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    .line 1530
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    add-int/2addr v0, v11

    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    .line 1532
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset2:I

    .line 1533
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v3, 0x0

    .line 1534
    .local v3, "width":I
    :goto_0
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v6, v0, v1

    .line 1536
    .local v6, "height":I
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 1537
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1538
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1539
    .local v9, "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 1540
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1547
    .end local v9    # "iconLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1548
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1549
    .local v7, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1550
    .local v13, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1552
    .local v8, "heightSize":I
    sparse-switch v12, :sswitch_data_0

    .line 1563
    :goto_2
    sparse-switch v7, :sswitch_data_1

    .line 1574
    :goto_3
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    .line 1575
    return-void

    .line 1533
    .end local v3    # "width":I
    .end local v6    # "height":I
    .end local v7    # "heightMode":I
    .end local v8    # "heightSize":I
    .end local v12    # "widthMode":I
    .end local v13    # "widthSize":I
    :cond_1
    iget v3, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    goto :goto_0

    .line 1542
    .restart local v3    # "width":I
    .restart local v6    # "height":I
    :cond_2
    if-gez v11, :cond_0

    .line 1544
    sub-int/2addr v3, v11

    goto :goto_1

    .line 1554
    .restart local v7    # "heightMode":I
    .restart local v8    # "heightSize":I
    .restart local v12    # "widthMode":I
    .restart local v13    # "widthSize":I
    :sswitch_0
    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1555
    goto :goto_2

    .line 1557
    :sswitch_1
    move v3, v13

    .line 1558
    goto :goto_2

    .line 1565
    :sswitch_2
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1566
    goto :goto_3

    .line 1568
    :sswitch_3
    move v6, v8

    .line 1569
    goto :goto_3

    .line 1552
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 1563
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1487
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1488
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1489
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1490
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1492
    :cond_0
    return-void
.end method

.method public setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1450
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1451
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1452
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1441
    return-void
.end method

.method public setShowIcon(Z)V
    .locals 2
    .param p1, "showIcon"    # Z

    .prologue
    .line 1436
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1437
    return-void

    .line 1436
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setShowUp(Z)V
    .locals 2
    .param p1, "isUp"    # Z

    .prologue
    .line 1432
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1433
    return-void

    .line 1432
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1455
    iput p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 1456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1457
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1458
    return-void
.end method

.method public setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1445
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    .line 1446
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    .line 1447
    return-void
.end method