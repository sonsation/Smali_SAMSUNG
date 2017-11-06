.class public Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;
.super Landroid/widget/ImageView;
.source "StateButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
    }
.end annotation


# static fields
.field private static final IDLE_STATE_IDX:I


# instance fields
.field private mCurrStateIdx:I

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;

.field private mOnWrappedClickListener:Landroid/view/View$OnClickListener;

.field private final mStates:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mCurrStateIdx:I

    .line 29
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 65
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mStates:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    .line 66
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->iniView([Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 78
    invoke-direct/range {p0 .. p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mCurrStateIdx:I

    .line 29
    new-instance v12, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 79
    sget-object v12, Lcom/samsung/android/app/musiclibrary/R$styleable;->StateButton:[I

    .line 80
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 83
    .local v4, "a":Landroid/content/res/TypedArray;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 84
    .local v6, "res":Landroid/content/res/Resources;
    sget v12, Lcom/samsung/android/app/musiclibrary/R$styleable;->StateButton_state_ids:I

    const/4 v13, 0x0

    .line 85
    invoke-virtual {v4, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    .line 87
    .local v10, "stateIds":[I
    array-length v8, v10

    .line 88
    .local v8, "stateCount":I
    sget v12, Lcom/samsung/android/app/musiclibrary/R$styleable;->StateButton_state_descriptions:I

    new-array v13, v8, [I

    .line 89
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->getResourceIdsFromAttribute(Landroid/content/res/Resources;Landroid/content/res/TypedArray;I[I)[I

    move-result-object v9

    .line 91
    .local v9, "stateDescs":[I
    sget v12, Lcom/samsung/android/app/musiclibrary/R$styleable;->StateButton_state_backgrounds:I

    new-array v13, v8, [I

    .line 92
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->getResourceIdsFromAttribute(Landroid/content/res/Resources;Landroid/content/res/TypedArray;I[I)[I

    move-result-object v7

    .line 94
    .local v7, "stateBacks":[I
    sget v12, Lcom/samsung/android/app/musiclibrary/R$styleable;->StateButton_state_values:I

    new-array v13, v8, [I

    .line 95
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->getResourceIdsFromAttribute(Landroid/content/res/Resources;Landroid/content/res/TypedArray;I[I)[I

    move-result-object v11

    .line 98
    .local v11, "stateValues":[I
    new-array v12, v8, [Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mStates:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    .line 99
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_0

    .line 100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mStates:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    new-instance v13, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    aget v14, v10, v5

    aget v15, v7, v5

    aget v16, v9, v5

    aget v17, v11, v5

    invoke-direct/range {v13 .. v17}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;-><init>(IIII)V

    aput-object v13, v12, v5

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 102
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mStates:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->iniView([Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V

    .line 103
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    .prologue
    .line 17
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mCurrStateIdx:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mStates:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->setStateInternal(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mOnWrappedClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private getResourceIdsFromAttribute(Landroid/content/res/Resources;Landroid/content/res/TypedArray;I[I)[I
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "a"    # Landroid/content/res/TypedArray;
    .param p3, "attrResId"    # I
    .param p4, "resIds"    # [I

    .prologue
    .line 134
    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 135
    .local v0, "refResId":I
    invoke-direct {p0, p1, v0, p4}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->getResourceIdsFromTypedArray(Landroid/content/res/Resources;I[I)[I

    move-result-object v1

    return-object v1
.end method

.method private getResourceIdsFromTypedArray(Landroid/content/res/Resources;I[I)[I
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "typedArrResId"    # I
    .param p3, "resIds"    # [I

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    invoke-direct {p0, v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->getResourceIdsFromTypedArray(Landroid/content/res/TypedArray;[I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p3

    .line 146
    .end local p3    # "resIds":[I
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    :cond_0
    :goto_0
    return-object p3

    .line 143
    .restart local p3    # "resIds":[I
    :catch_0
    move-exception v1

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    throw v1
.end method

.method private getResourceIdsFromTypedArray(Landroid/content/res/TypedArray;[I)[I
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "resIds"    # [I

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 155
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 156
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    aput v2, p2, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-object p2
.end method

.method private iniView([Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V
    .locals 3
    .param p1, "states"    # [Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    .prologue
    .line 162
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "- it should have the state at least one."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->setStateInternal(I)V

    .line 167
    return-void
.end method

.method private setStateInternal(I)V
    .locals 4
    .param p1, "stateIdx"    # I

    .prologue
    .line 183
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mStates:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 184
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "currStateIdx is wrong value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_1
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mCurrStateIdx:I

    if-eq p1, v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mStates:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    aget-object v2, v2, p1

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->applyState(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V

    .line 188
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mCurrStateIdx:I

    .line 190
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mCurrStateIdx:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v1, 0x0

    .line 191
    .local v1, "oldState":Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mStates:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    aget-object v0, v2, p1

    .line 192
    .local v0, "newState":Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;

    if-eqz v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;->onStateChanged(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V

    .line 196
    .end local v0    # "newState":Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
    .end local v1    # "oldState":Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
    :cond_2
    return-void

    .line 190
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mStates:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mCurrStateIdx:I

    aget-object v1, v2, v3

    goto :goto_0
.end method


# virtual methods
.method protected applyState(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V
    .locals 2
    .param p1, "currState"    # Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    .prologue
    .line 199
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->descriptionResId:I

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->descriptionResId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->drawableResId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->setImageResource(I)V

    .line 203
    return-void
.end method

.method public getState()Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mStates:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mCurrStateIdx:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 119
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;

    .line 120
    .local v0, "savedState":Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 121
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;->access$400(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->setStateInternal(I)V

    .line 122
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 114
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mCurrStateIdx:I

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mOnWrappedClickListener:Landroid/view/View$OnClickListener;

    .line 109
    return-void
.end method

.method public setOnStateChangedListener(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;

    .line 126
    return-void
.end method

.method public setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 170
    const/4 v0, -0x1

    .line 171
    .local v0, "index":I
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->mStates:[Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 172
    .local v1, "s":Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
    add-int/lit8 v0, v0, 0x1

    .line 173
    iget v5, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->id:I

    if-ne v5, p1, :cond_2

    .line 177
    .end local v1    # "s":Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
    :cond_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 178
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->setStateInternal(I)V

    .line 180
    :cond_1
    return-void

    .line 171
    .restart local v1    # "s":Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
