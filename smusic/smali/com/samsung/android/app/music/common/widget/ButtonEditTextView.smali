.class public Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
.super Landroid/widget/FrameLayout;
.source "ButtonEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_NUM_OF_CHARACTER:I = 0x64

.field private static final DISABLE_EMOTICON_FLAG:Ljava/lang/String; = "disableEmoticonInput=true"

.field private static final DISABLE_PREDICTION_FLAG:Ljava/lang/String; = "inputType=PredictionOff"

.field private static final ERROR_INVALID_CHARACTER:I = 0x2

.field private static final ERROR_MAX_LENGTH:I = 0x1


# instance fields
.field private final mAddDeleteButton:Landroid/widget/ImageButton;

.field private final mEditLayout:Landroid/view/View;

.field private final mEditText:Landroid/widget/EditText;

.field private final mHintLabel:Landroid/widget/TextView;

.field private mIsEditMode:Z

.field private mLastErrorCode:I

.field private final mMarginTopEditLayout:I

.field private mMaxLength:I

.field private mNextFocusView:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

.field private final mTextInputLayout:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    const/4 v8, -0x1

    iput v8, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mLastErrorCode:I

    .line 66
    const/16 v8, 0x64

    iput v8, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mMaxLength:I

    .line 84
    const v8, 0x7f04002b

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 85
    .local v7, "v":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->addView(Landroid/view/View;)V

    .line 87
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mIsEditMode:Z

    .line 89
    const v8, 0x7f120109

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditLayout:Landroid/view/View;

    .line 90
    const v8, 0x7f12010a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/design/widget/TextInputLayout;

    iput-object v8, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 91
    const v8, 0x7f12010c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    .line 92
    const v8, 0x7f12010b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mAddDeleteButton:Landroid/widget/ImageButton;

    .line 93
    iget-object v8, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mAddDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a01d6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 94
    const v8, 0x7f120108

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mHintLabel:Landroid/widget/TextView;

    .line 97
    iget-object v8, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    const-string v9, "inputType=PredictionOff;disableEmoticonInput=true"

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 100
    iget-object v8, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 101
    .local v6, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v8, 0x0

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 102
    iget-object v8, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d02bb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mMarginTopEditLayout:I

    .line 108
    sget-object v8, Lcom/samsung/android/app/music/R$styleable;->ButtonEditTextView:[I

    .line 109
    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x6

    const/4 v9, -0x1

    :try_start_0
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 114
    .local v1, "editTextId":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 115
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->setEditTextId(I)V

    .line 119
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "hint":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->setHint(Ljava/lang/String;)V

    .line 123
    const/4 v8, 0x2

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 125
    .local v5, "nextFocusViewId":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_1

    .line 126
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->setNextImeFocusView(I)V

    .line 130
    :cond_1
    const/4 v8, 0x4

    const/4 v9, 0x1

    .line 131
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 132
    .local v3, "inputType":I
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->setInputType(I)V

    .line 134
    const/4 v8, 0x5

    const/16 v9, 0x64

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 136
    .local v4, "maxLength":I
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->setMaxLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->initListeners()V

    .line 142
    return-void

    .line 138
    .end local v1    # "editTextId":I
    .end local v2    # "hint":Ljava/lang/String;
    .end local v3    # "inputType":I
    .end local v4    # "maxLength":I
    .end local v5    # "nextFocusViewId":I
    :catchall_0
    move-exception v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v8
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->hideInputMethod()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mNextFocusView:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mIsEditMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->toggleEditMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;Landroid/widget/EditText;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->isEmptyEditText(Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)Landroid/support/design/widget/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .prologue
    .line 29
    iget v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mLastErrorCode:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mLastErrorCode:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .prologue
    .line 29
    iget v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mMaxLength:I

    return v0
.end method

.method private hideHintLabel()V
    .locals 5

    .prologue
    .line 356
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mHintLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditLayout:Landroid/view/View;

    .line 358
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 359
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mMarginTopEditLayout:I

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 361
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    return-void
.end method

.method private hideInputMethod()V
    .locals 3

    .prologue
    .line 365
    .line 366
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 367
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 370
    :cond_0
    return-void
.end method

.method private initListeners()V
    .locals 5

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$1;-><init>(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$2;-><init>(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;

    iget v4, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mMaxLength:I

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$3;-><init>(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mAddDeleteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$4;-><init>(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    return-void
.end method

.method private isEmptyEditText(Landroid/widget/EditText;)Z
    .locals 1
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 373
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEditTextId(I)V
    .locals 1
    .param p1, "idRes"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setId(I)V

    .line 224
    return-void
.end method

.method private setHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mHintLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 216
    return-void
.end method

.method private setMaxLength(I)V
    .locals 0
    .param p1, "maxLength"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mMaxLength:I

    .line 220
    return-void
.end method

.method private setNextImeFocusView(I)V
    .locals 2
    .param p1, "nextFocusViewId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "nextFocusView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 205
    check-cast v0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .end local v0    # "nextFocusView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->setNextImeFocusView(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)V

    .line 207
    :cond_0
    return-void
.end method

.method private setNextImeFocusView(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;)V
    .locals 0
    .param p1, "nextView"    # Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mNextFocusView:Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;

    .line 195
    return-void
.end method

.method private showHintLabel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 348
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mHintLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditLayout:Landroid/view/View;

    .line 350
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 351
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 352
    iget-object v1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    return-void
.end method

.method private toggleEditMode()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mIsEditMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mIsEditMode:Z

    .line 327
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mIsEditMode:Z

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mAddDeleteButton:Landroid/widget/ImageButton;

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mAddDeleteButton:Landroid/widget/ImageButton;

    .line 332
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->showHintLabel()V

    .line 345
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 326
    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mHintLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mAddDeleteButton:Landroid/widget/ImageButton;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mAddDeleteButton:Landroid/widget/ImageButton;

    .line 342
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 343
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->hideHintLabel()V

    goto :goto_1
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v1, 0x1

    .line 388
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;

    .line 389
    .local v0, "ss":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 390
    iget v2, v0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;->editModeState:I

    if-eq v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mIsEditMode:Z

    .line 391
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->toggleEditMode()V

    .line 392
    new-instance v1, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$5;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$5;-><init>(Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->post(Ljava/lang/Runnable;)Z

    .line 398
    return-void

    .line 390
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 378
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 379
    .local v0, "originalState":Landroid/os/Parcelable;
    new-instance v2, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 380
    .local v2, "ss":Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;
    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mIsEditMode:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput v3, v2, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;->editModeState:I

    .line 381
    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    .line 382
    .local v1, "sequence":Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    const/4 v3, 0x0

    :goto_1
    iput-object v3, v2, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView$SavedState;->error:Ljava/lang/String;

    .line 383
    return-object v2

    .line 380
    .end local v1    # "sequence":Ljava/lang/CharSequence;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 382
    .restart local v1    # "sequence":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mIsEditMode:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->toggleEditMode()V

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/ButtonEditTextView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
