.class public Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;
.super Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;
.source "SeslProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$ProgressStyle;
    }
.end annotation


# static fields
.field public static final STYLE_CIRCLE:I = 0x3e8

.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressStyle:I

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->initFormats()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressStyle:I

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->initFormats()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private initFormats()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "%1d/%1d"

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 106
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 108
    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 392
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 397
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 117
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 122
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 128
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "dialog":Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v0, p3}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setIndeterminate(Z)V

    .line 132
    invoke-virtual {v0, p4}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setCancelable(Z)V

    .line 133
    invoke-virtual {v0, p5}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 134
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->show()V

    .line 135
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getMax()I

    move-result v0

    .line 286
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getProgress()I

    move-result v0

    .line 272
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 279
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->incrementProgressBy(I)V

    .line 301
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->onProgressChanged()V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->incrementSecondaryProgressBy(I)V

    .line 310
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->onProgressChanged()V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->isIndeterminate()Z

    move-result v0

    .line 344
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 141
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslAlertDialog:[I

    const v6, 0x101005d

    const/4 v7, 0x0

    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressStyle:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 149
    new-instance v4, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog$1;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 179
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslAlertDialog_seslHorizontalProgressLayout:I

    sget v5, Lcom/samsung/android/support/sesl/R$layout;->sesl_alert_dialog_progress:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 182
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/samsung/android/support/sesl/R$id;->progress:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    .line 183
    sget v4, Lcom/samsung/android/support/sesl/R$id;->progress_number:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 184
    sget v4, Lcom/samsung/android/support/sesl/R$id;->progress_percent:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 185
    sget v4, Lcom/samsung/android/support/sesl/R$id;->message:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 186
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setView(Landroid/view/View;)V

    .line 208
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mMax:I

    if-lez v4, :cond_0

    .line 210
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mMax:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setMax(I)V

    .line 212
    :cond_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressVal:I

    if-lez v4, :cond_1

    .line 213
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setProgress(I)V

    .line 215
    :cond_1
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mSecondaryProgressVal:I

    if-lez v4, :cond_2

    .line 216
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setSecondaryProgress(I)V

    .line 218
    :cond_2
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mIncrementBy:I

    if-lez v4, :cond_3

    .line 219
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->incrementProgressBy(I)V

    .line 221
    :cond_3
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mIncrementSecondaryBy:I

    if-lez v4, :cond_4

    .line 222
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 224
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 225
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 228
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    .line 231
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 233
    :cond_7
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setIndeterminate(Z)V

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->onProgressChanged()V

    .line 235
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 236
    return-void

    .line 187
    .end local v3    # "view":Landroid/view/View;
    :cond_8
    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressStyle:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_9

    .line 188
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/sesl/R$drawable;->sesl_progress_dialog_circle_background_shape:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 192
    sget v4, Lcom/samsung/android/support/sesl/R$layout;->sesl_progress_dialog_circle:I

    invoke-virtual {v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 193
    .restart local v3    # "view":Landroid/view/View;
    sget v4, Lcom/samsung/android/support/sesl/R$id;->progress:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    .line 194
    sget v4, Lcom/samsung/android/support/sesl/R$id;->message:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 195
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setView(Landroid/view/View;)V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/sesl/R$dimen;->sesl_progress_dialog_circle_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 199
    .local v1, "circleSize":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1, v1}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_0

    .line 201
    .end local v1    # "circleSize":I
    .end local v3    # "view":Landroid/view/View;
    :cond_9
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslAlertDialog_seslProgressLayout:I

    sget v5, Lcom/samsung/android/support/sesl/R$layout;->sesl_progress_dialog:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 204
    .restart local v3    # "view":Landroid/view/View;
    sget v4, Lcom/samsung/android/support/sesl/R$id;->progress:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    .line 205
    sget v4, Lcom/samsung/android/support/sesl/R$id;->message:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 206
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->setView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->onStart()V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mHasStarted:Z

    .line 242
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->onStop()V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mHasStarted:Z

    .line 248
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setIndeterminate(Z)V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setMax(I)V

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->onProgressChanged()V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iput p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressStyle:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mMessageView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    :cond_1
    :goto_1
    return-void

    .line 352
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 355
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgress(I)V

    .line 253
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->onProgressChanged()V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iput p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 374
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->onProgressChanged()V

    .line 375
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 388
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->onProgressChanged()V

    .line 389
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgressStyle:I

    .line 361
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mProgress:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setSecondaryProgress(I)V

    .line 262
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->onProgressChanged()V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iput p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method
