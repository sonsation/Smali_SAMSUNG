.class public Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;
.super Landroid/widget/Spinner;
.source "ResizableSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResizableSpinner"


# instance fields
.field private mCachedBaseLine:I

.field private mDelegateListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mFakeSpinnerArrow:Landroid/widget/ImageView;

.field private mHideSoftKeypad:Z

.field private mIsResized:Z

.field private mLayoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 26
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mCachedBaseLine:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mHideSoftKeypad:Z

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    .line 26
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mCachedBaseLine:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mHideSoftKeypad:Z

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mCachedBaseLine:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mHideSoftKeypad:Z

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mDelegateListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->reDrawSpinnerWithSelectedItem(Landroid/view/View;)V

    return-void
.end method

.method private hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 172
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 173
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    .line 175
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 176
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 177
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 179
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "rootView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private reDrawSpinnerWithSelectedItem(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 182
    if-nez p1, :cond_0

    .line 183
    const-string v3, "ResizableSpinner"

    const-string v4, "reDrawSpinnerWithSelectedItem : view or spinner is null."

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 186
    :cond_0
    const-string v3, "ResizableSpinner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemSelected : view - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", parent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1, v6, v6}, Landroid/view/View;->measure(II)V

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 189
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 190
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 191
    .local v0, "height":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 192
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 193
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    const-string v3, "ResizableSpinner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reDrawSpinnerWithSelectedItem : width - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetCachedBaseLine()V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mCachedBaseLine:I

    .line 53
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 3

    .prologue
    .line 58
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mCachedBaseLine:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 59
    invoke-super {p0}, Landroid/widget/Spinner;->getBaseline()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mCachedBaseLine:I

    .line 60
    const-string v0, "ResizableSpinner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBaseline. data - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mCachedBaseLine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mCachedBaseLine:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/Spinner;->onAttachedToWindow()V

    .line 68
    const-string v0, "ResizableSpinner"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$2;-><init>(Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;)V

    invoke-super {p0, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 92
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mHideSoftKeypad:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V

    .line 166
    :cond_0
    if-eq p1, p0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->performClick()Z

    .line 169
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x1

    .line 102
    invoke-super/range {p0 .. p5}, Landroid/widget/Spinner;->onLayout(ZIIII)V

    .line 103
    const-string v2, "ResizableSpinner"

    const-string v3, "onLayout"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->resetCachedBaseLine()V

    .line 105
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mIsResized:Z

    if-nez v2, :cond_0

    .line 106
    const-string v2, "ResizableSpinner"

    const-string v3, "onLayout : not resized. so try to resize"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 109
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->reDrawSpinnerWithSelectedItem(Landroid/view/View;)V

    .line 110
    iput-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mIsResized:Z

    .line 111
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->post(Ljava/lang/Runnable;)Z

    .line 115
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 116
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 117
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    const v2, 0x7f120390

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mFakeSpinnerArrow:Landroid/widget/ImageView;

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mFakeSpinnerArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 120
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 121
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mFakeSpinnerArrow:Landroid/widget/ImageView;

    const v3, 0x7f0203b7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mFakeSpinnerArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_2
    return-void

    .line 123
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mFakeSpinnerArrow:Landroid/widget/ImageView;

    const v3, 0x7f0203b6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mHideSoftKeypad:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V

    .line 135
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAlpha(F)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mFakeSpinnerArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mFakeSpinnerArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 158
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mFakeSpinnerArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mFakeSpinnerArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 148
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->setAlpha(F)V

    .line 150
    :cond_0
    return-void

    .line 148
    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method public setHideSoftKeypad(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mHideSoftKeypad:Z

    .line 140
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->mDelegateListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 97
    const-string v0, "ResizableSpinner"

    const-string/jumbo v1, "setOnItemSelectedListener"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method
