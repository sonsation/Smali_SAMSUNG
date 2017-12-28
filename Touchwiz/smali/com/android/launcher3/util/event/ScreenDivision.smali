.class public Lcom/android/launcher3/util/event/ScreenDivision;
.super Ljava/lang/Object;
.source "ScreenDivision.java"


# static fields
.field private static final DIRECTION_X:I = 0x0

.field public static final DIRECTION_Y:I = 0x1

.field public static final NON_INCLUDED_POS:I = -0x1

.field public static final TYPE_EQUAL_CLEAVAGE:I


# instance fields
.field private final mCountReverse:Z

.field private mCustomized:Landroid/util/SparseArray;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDirection:I

.field private final mParentRect:Landroid/graphics/Rect;

.field private final mSections:[Landroid/graphics/Rect;

.field private final mTypeOfDivision:I


# direct methods
.method public constructor <init>(IIILandroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "numOfSections"    # I
    .param p2, "typeOfDivision"    # I
    .param p3, "direction"    # I
    .param p4, "parentRect"    # Landroid/graphics/Rect;
    .param p5, "countReverse"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mCustomized:Landroid/util/SparseArray;

    .line 44
    new-array v1, p1, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    .line 45
    iput p2, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mTypeOfDivision:I

    .line 46
    iput p3, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mDirection:I

    .line 47
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mParentRect:Landroid/graphics/Rect;

    .line 48
    iput-boolean p5, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mCountReverse:Z

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method private binary(I)I
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 98
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private builderX()V
    .locals 9

    .prologue
    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v3, "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/event/Partition;>;"
    const/4 v5, 0x0

    .line 138
    .local v5, "startIndex":I
    iget-object v6, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mParentRect:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 140
    .local v1, "left":I
    const/4 v0, 0x0

    .local v0, "curIndex":I
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 141
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/event/ScreenDivision;->isCustomized(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 142
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mParentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    aget-object v7, v7, v0

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v7, v7, -0x1

    .line 143
    invoke-direct {p0, v7}, Lcom/android/launcher3/util/event/ScreenDivision;->positive(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mParentRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v1, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 144
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v6, Lcom/android/launcher3/util/event/Partition;

    add-int/lit8 v7, v0, -0x1

    invoke-direct {p0, v7}, Lcom/android/launcher3/util/event/ScreenDivision;->positive(I)I

    move-result v7

    invoke-direct {v6, v5, v7, v4}, Lcom/android/launcher3/util/event/Partition;-><init>(IILandroid/graphics/Rect;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v6, Lcom/android/launcher3/util/event/Partition;

    iget-object v7, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    aget-object v7, v7, v0

    invoke-direct {v6, v0, v0, v7}, Lcom/android/launcher3/util/event/Partition;-><init>(IILandroid/graphics/Rect;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v6, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v6, 0x1

    .line 147
    add-int/lit8 v5, v0, 0x1

    .line 140
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    if-ge v5, v0, :cond_2

    .line 152
    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mParentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mParentRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mParentRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v1, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    .restart local v4    # "rect":Landroid/graphics/Rect;
    new-instance v6, Lcom/android/launcher3/util/event/Partition;

    iget-object v7, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v6, v5, v7, v4}, Lcom/android/launcher3/util/event/Partition;-><init>(IILandroid/graphics/Rect;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/event/Partition;

    .local v2, "partition":Lcom/android/launcher3/util/event/Partition;
    invoke-direct {p0, v2}, Lcom/android/launcher3/util/event/ScreenDivision;->makrPartition(Lcom/android/launcher3/util/event/Partition;)V

    goto :goto_1

    .line 157
    .end local v2    # "partition":Lcom/android/launcher3/util/event/Partition;
    :cond_3
    return-void
.end method

.method private builderY()V
    .locals 9

    .prologue
    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v2, "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/event/Partition;>;"
    const/4 v4, 0x0

    .line 113
    .local v4, "startIndex":I
    iget-object v6, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mParentRect:Landroid/graphics/Rect;

    iget v5, v6, Landroid/graphics/Rect;->top:I

    .line 115
    .local v5, "top":I
    const/4 v0, 0x0

    .local v0, "curIndex":I
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 116
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/event/ScreenDivision;->isCustomized(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    new-instance v3, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mParentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mParentRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    aget-object v8, v8, v0

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v8, v8, -0x1

    .line 118
    invoke-direct {p0, v8}, Lcom/android/launcher3/util/event/ScreenDivision;->positive(I)I

    move-result v8

    invoke-direct {v3, v6, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    .local v3, "rect":Landroid/graphics/Rect;
    new-instance v6, Lcom/android/launcher3/util/event/Partition;

    add-int/lit8 v7, v0, -0x1

    invoke-direct {p0, v7}, Lcom/android/launcher3/util/event/ScreenDivision;->positive(I)I

    move-result v7

    invoke-direct {v6, v4, v7, v3}, Lcom/android/launcher3/util/event/Partition;-><init>(IILandroid/graphics/Rect;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v6, Lcom/android/launcher3/util/event/Partition;

    iget-object v7, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    aget-object v7, v7, v0

    invoke-direct {v6, v0, v0, v7}, Lcom/android/launcher3/util/event/Partition;-><init>(IILandroid/graphics/Rect;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v6, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v6, 0x1

    .line 122
    add-int/lit8 v4, v0, 0x1

    .line 115
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    if-ge v4, v0, :cond_2

    .line 127
    new-instance v3, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mParentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mParentRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mParentRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v6, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    .restart local v3    # "rect":Landroid/graphics/Rect;
    new-instance v6, Lcom/android/launcher3/util/event/Partition;

    iget-object v7, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v6, v4, v7, v3}, Lcom/android/launcher3/util/event/Partition;-><init>(IILandroid/graphics/Rect;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/event/Partition;

    .local v1, "partition":Lcom/android/launcher3/util/event/Partition;
    invoke-direct {p0, v1}, Lcom/android/launcher3/util/event/ScreenDivision;->makrPartition(Lcom/android/launcher3/util/event/Partition;)V

    goto :goto_1

    .line 132
    .end local v1    # "partition":Lcom/android/launcher3/util/event/Partition;
    :cond_3
    return-void
.end method

.method private createSectionsX(Landroid/graphics/Rect;IIII)V
    .locals 10
    .param p1, "parentRect"    # Landroid/graphics/Rect;
    .param p2, "width"    # I
    .param p3, "remainder"    # I
    .param p4, "cur"    # I
    .param p5, "end"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    array-length v0, v0

    if-eq p4, v0, :cond_0

    if-le p4, p5, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    if-lez p4, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    add-int/lit8 v1, p4, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v0, 0x1

    .line 173
    .local v7, "left":I
    :goto_1
    add-int v0, v7, p2

    invoke-direct {p0, p3}, Lcom/android/launcher3/util/event/ScreenDivision;->binary(I)I

    move-result v1

    add-int v8, v0, v1

    .line 174
    .local v8, "right":I
    iget v9, p1, Landroid/graphics/Rect;->top:I

    .line 175
    .local v9, "top":I
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 176
    .local v6, "bottom":I
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v9, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v0, p4

    .line 177
    add-int/lit8 v3, p3, -0x1

    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/event/ScreenDivision;->createSectionsX(Landroid/graphics/Rect;IIII)V

    goto :goto_0

    .line 172
    .end local v6    # "bottom":I
    .end local v7    # "left":I
    .end local v8    # "right":I
    .end local v9    # "top":I
    :cond_2
    iget v7, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method private createSectionsY(Landroid/graphics/Rect;IIII)V
    .locals 10
    .param p1, "parentRect"    # Landroid/graphics/Rect;
    .param p2, "height"    # I
    .param p3, "remainder"    # I
    .param p4, "cur"    # I
    .param p5, "end"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    array-length v0, v0

    if-eq p4, v0, :cond_0

    if-le p4, p5, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    if-lez p4, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    add-int/lit8 v1, p4, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v9, v0, 0x1

    .line 163
    .local v9, "top":I
    :goto_1
    add-int v0, v9, p2

    invoke-direct {p0, p3}, Lcom/android/launcher3/util/event/ScreenDivision;->binary(I)I

    move-result v1

    add-int v6, v0, v1

    .line 164
    .local v6, "bottom":I
    iget v7, p1, Landroid/graphics/Rect;->left:I

    .line 165
    .local v7, "left":I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    .line 166
    .local v8, "right":I
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v9, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, v0, p4

    .line 167
    add-int/lit8 v3, p3, -0x1

    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/event/ScreenDivision;->createSectionsY(Landroid/graphics/Rect;IIII)V

    goto :goto_0

    .line 162
    .end local v6    # "bottom":I
    .end local v7    # "left":I
    .end local v8    # "right":I
    .end local v9    # "top":I
    :cond_2
    iget v9, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method private isCustomized(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mCustomized:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mCustomized:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makePartition(IILandroid/graphics/Rect;)V
    .locals 11
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "parentRect"    # Landroid/graphics/Rect;

    .prologue
    .line 83
    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v10, v0, 0x1

    .line 84
    .local v10, "divistion":I
    iget v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mTypeOfDivision:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 85
    iget v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mDirection:I

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v1, v10, -0x1

    sub-int/2addr v0, v1

    div-int v2, v0, v10

    .line 87
    .local v2, "width":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v1, v10, -0x1

    sub-int/2addr v0, v1

    rem-int v3, v0, v10

    .local v3, "remainder":I
    move-object v0, p0

    move-object v1, p3

    move v4, p1

    move v5, p2

    .line 88
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/event/ScreenDivision;->createSectionsX(Landroid/graphics/Rect;IIII)V

    .line 95
    .end local v2    # "width":I
    .end local v3    # "remainder":I
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v1, v10, -0x1

    sub-int/2addr v0, v1

    div-int v6, v0, v10

    .line 91
    .local v6, "height":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v1, v10, -0x1

    sub-int/2addr v0, v1

    rem-int v3, v0, v10

    .restart local v3    # "remainder":I
    move-object v4, p0

    move-object v5, p3

    move v7, v3

    move v8, p1

    move v9, p2

    .line 92
    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/util/event/ScreenDivision;->createSectionsY(Landroid/graphics/Rect;IIII)V

    goto :goto_0
.end method

.method private makrPartition(Lcom/android/launcher3/util/event/Partition;)V
    .locals 3
    .param p1, "partition"    # Lcom/android/launcher3/util/event/Partition;

    .prologue
    .line 79
    iget v0, p1, Lcom/android/launcher3/util/event/Partition;->mStartIndex:I

    iget v1, p1, Lcom/android/launcher3/util/event/Partition;->mEndIndex:I

    iget-object v2, p1, Lcom/android/launcher3/util/event/Partition;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/util/event/ScreenDivision;->makePartition(IILandroid/graphics/Rect;)V

    .line 80
    return-void
.end method

.method private positive(I)I
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 102
    if-lez p1, :cond_0

    .end local p1    # "num":I
    :goto_0
    return p1

    .restart local p1    # "num":I
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public builder()Lcom/android/launcher3/util/event/ScreenDivision;
    .locals 6

    .prologue
    .line 62
    iget v3, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mDirection:I

    if-nez v3, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/android/launcher3/util/event/ScreenDivision;->builderX()V

    .line 67
    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mCountReverse:Z

    if-eqz v3, :cond_1

    .line 68
    iget-object v3, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 69
    .local v0, "fixedValue":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_1

    .line 70
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 71
    .local v2, "temp":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    sub-int v5, v0, v1

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    .line 72
    iget-object v3, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    sub-int v4, v0, v1

    aput-object v2, v3, v4

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "fixedValue":I
    .end local v1    # "i":I
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/util/event/ScreenDivision;->builderY()V

    goto :goto_0

    .line 75
    :cond_1
    return-object p0
.end method

.method public customPatition(ILandroid/graphics/Rect;)Lcom/android/launcher3/util/event/ScreenDivision;
    .locals 2
    .param p1, "index"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mCountReverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    aput-object p2, v0, p1

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mCustomized:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    :cond_1
    return-object p0
.end method

.method public getNumOfSection(FF)I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/launcher3/util/event/ScreenDivision;->mSections:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 181
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
