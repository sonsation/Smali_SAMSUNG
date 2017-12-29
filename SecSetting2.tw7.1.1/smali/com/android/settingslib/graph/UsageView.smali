.class public Lcom/android/settingslib/graph/UsageView;
.super Landroid/widget/FrameLayout;
.source "UsageView.java"


# instance fields
.field private final mBottomLabels:[Landroid/widget/TextView;

.field private final mLabels:[Landroid/widget/TextView;

.field private final mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/android/settingslib/R$layout;->usage_view:I

    invoke-virtual {v8, v9, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    sget v8, Lcom/android/settingslib/R$id;->usage_graph:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/graph/UsageGraph;

    iput-object v8, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    .line 54
    const/4 v8, 0x3

    new-array v9, v8, [Landroid/widget/TextView;

    .line 55
    sget v8, Lcom/android/settingslib/R$id;->label_bottom:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 56
    sget v8, Lcom/android/settingslib/R$id;->label_middle:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x1

    aput-object v8, v9, v10

    .line 57
    sget v8, Lcom/android/settingslib/R$id;->label_top:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x2

    aput-object v8, v9, v10

    .line 54
    iput-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    .line 59
    const/4 v8, 0x2

    new-array v9, v8, [Landroid/widget/TextView;

    .line 60
    sget v8, Lcom/android/settingslib/R$id;->label_start:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 61
    sget v8, Lcom/android/settingslib/R$id;->label_end:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x1

    aput-object v8, v9, v10

    .line 59
    iput-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    .line 63
    sget-object v8, Lcom/android/settingslib/R$styleable;->UsageView:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_sideLabels:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 65
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_sideLabels:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_bottomLabels:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 68
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_bottomLabels:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 70
    :cond_1
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_textColor:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 71
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_textColor:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 72
    .local v3, "color":I
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v7, v9, v8

    .line 73
    .local v7, "v":Landroid/widget/TextView;
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 75
    .end local v7    # "v":Landroid/widget/TextView;
    :cond_2
    iget-object v9, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_3

    aget-object v7, v9, v8

    .line 76
    .restart local v7    # "v":Landroid/widget/TextView;
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 79
    .end local v3    # "color":I
    .end local v7    # "v":Landroid/widget/TextView;
    :cond_3
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_android_gravity:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 80
    sget v8, Lcom/android/settingslib/R$styleable;->UsageView_android_gravity:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 81
    .local v4, "gravity":I
    const v8, 0x800005

    if-ne v4, v8, :cond_5

    .line 82
    sget v8, Lcom/android/settingslib/R$id;->graph_label_group:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 83
    .local v6, "layout":Landroid/widget/LinearLayout;
    sget v8, Lcom/android/settingslib/R$id;->label_group:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 85
    .local v5, "labels":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 86
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    const v8, 0x800005

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 90
    sget v8, Lcom/android/settingslib/R$id;->bottom_label_group:I

    invoke-virtual {p0, v8}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 91
    .local v1, "bottomLabels":Landroid/widget/LinearLayout;
    sget v8, Lcom/android/settingslib/R$id;->bottom_label_space:I

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 92
    .local v2, "bottomSpace":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    .end local v1    # "bottomLabels":Landroid/widget/LinearLayout;
    .end local v2    # "bottomSpace":Landroid/view/View;
    .end local v4    # "gravity":I
    .end local v5    # "labels":Landroid/widget/LinearLayout;
    .end local v6    # "layout":Landroid/widget/LinearLayout;
    :cond_4
    iget-object v8, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    sget v9, Lcom/android/settingslib/R$styleable;->UsageView_android_colorAccent:I

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/settingslib/graph/UsageGraph;->setAccentColor(I)V

    .line 50
    return-void

    .line 94
    .restart local v4    # "gravity":I
    :cond_5
    const v8, 0x800003

    if-eq v4, v8, :cond_4

    .line 95
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unsupported gravity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private setWeight(IF)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "weight"    # F

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 146
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 147
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 148
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    return-void
.end method


# virtual methods
.method public addPath(Landroid/util/SparseIntArray;)V
    .locals 1
    .param p1, "points"    # Landroid/util/SparseIntArray;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/UsageGraph;->addPath(Landroid/util/SparseIntArray;)V

    .line 118
    return-void
.end method

.method public clearPaths()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    invoke-virtual {v0}, Lcom/android/settingslib/graph/UsageGraph;->clearPaths()V

    .line 114
    return-void
.end method

.method public configureGraph(IIZZ)V
    .locals 1
    .param p1, "maxX"    # I
    .param p2, "maxY"    # I
    .param p3, "showProjection"    # Z
    .param p4, "projectUp"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/graph/UsageGraph;->setMax(II)V

    .line 124
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    invoke-virtual {v0, p3, p4}, Lcom/android/settingslib/graph/UsageGraph;->setShowProjection(ZZ)V

    .line 122
    return-void
.end method

.method public setBatteryGraphColor(Landroid/content/Intent;)V
    .locals 3
    .param p1, "batteryBroadcast"    # Landroid/content/Intent;

    .prologue
    .line 103
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v0

    .line 104
    .local v0, "batteryLevel":I
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    const v2, -0x11aafd

    invoke-virtual {v1, v2}, Lcom/android/settingslib/graph/UsageGraph;->setAccentColor(I)V

    .line 102
    :goto_0
    return-void

    .line 106
    :cond_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    const/16 v2, -0x3bff

    invoke-virtual {v1, v2}, Lcom/android/settingslib/graph/UsageGraph;->setAccentColor(I)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    const v2, -0xa143c3

    invoke-virtual {v1, v2}, Lcom/android/settingslib/graph/UsageGraph;->setAccentColor(I)V

    goto :goto_0
.end method

.method public setBottomLabels([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "labels"    # [Ljava/lang/CharSequence;

    .prologue
    .line 161
    array-length v1, p1

    iget-object v2, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid number of labels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mBottomLabels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    return-void
.end method

.method public setDividerColors(II)V
    .locals 1
    .param p1, "middleColor"    # I
    .param p2, "topColor"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/graph/UsageGraph;->setDividerColors(II)V

    .line 135
    return-void
.end method

.method public setDividerLoc(I)V
    .locals 1
    .param p1, "dividerLoc"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settingslib/graph/UsageView;->mUsageGraph:Lcom/android/settingslib/graph/UsageGraph;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/graph/UsageGraph;->setDividerLoc(I)V

    .line 131
    return-void
.end method

.method public setSideLabelWeights(FF)V
    .locals 1
    .param p1, "before"    # F
    .param p2, "after"    # F

    .prologue
    .line 140
    sget v0, Lcom/android/settingslib/R$id;->space1:I

    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/graph/UsageView;->setWeight(IF)V

    .line 141
    sget v0, Lcom/android/settingslib/R$id;->space2:I

    invoke-direct {p0, v0, p2}, Lcom/android/settingslib/graph/UsageView;->setWeight(IF)V

    .line 139
    return-void
.end method

.method public setSideLabels([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "labels"    # [Ljava/lang/CharSequence;

    .prologue
    .line 152
    array-length v1, p1

    iget-object v2, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid number of labels"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/settingslib/graph/UsageView;->mLabels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return-void
.end method
