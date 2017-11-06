.class public Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;
.super Ljava/lang/Object;
.source "MilkAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MilkAlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;
    }
.end annotation


# instance fields
.field mCancleable:Z

.field mCancleableOnTouchOutside:Z

.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mCustomView:Landroid/view/View;

.field mDescription:Ljava/lang/CharSequence;

.field mEnableService:Z

.field mMessage:Ljava/lang/CharSequence;

.field mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mNegativeButtonText:Ljava/lang/CharSequence;

.field mNegativeEventId:Ljava/lang/String;

.field mNeturalEventId:Ljava/lang/String;

.field mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mNeutralButtonText:Ljava/lang/CharSequence;

.field mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mPositiveButtonText:Ljava/lang/CharSequence;

.field mPositiveEventId:Ljava/lang/String;

.field mScreenId:Ljava/lang/String;

.field mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mEnableService:Z

    .line 339
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mCancleableOnTouchOutside:Z

    .line 341
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mCancleable:Z

    .line 344
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 345
    return-void
.end method

.method private getCustomView()Landroid/view/View;
    .locals 5

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400d5

    const/4 v4, 0x0

    .line 393
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 394
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f120173

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 395
    .local v0, "descTextview":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    return-object v1
.end method


# virtual methods
.method public apply(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 364
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mScreenId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mPositiveEventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;-><init>(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mScreenId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNegativeEventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;-><init>(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mScreenId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNeturalEventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams$OnClickListenerWrapper;-><init>(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    :cond_5
    return-void

    .line 376
    :cond_6
    const v0, 0x7f0a0146

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$MilkAlertParams;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 352
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
