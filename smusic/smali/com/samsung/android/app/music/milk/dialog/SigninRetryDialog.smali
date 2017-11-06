.class public Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;
.super Ljava/lang/Object;
.source "SigninRetryDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialog:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

.field private mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mActivity:Landroid/app/Activity;

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 34
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a038a

    .line 35
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a03a1

    .line 36
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a008a

    .line 37
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mDialog:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    .line 38
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mProgress:Landroid/app/ProgressDialog;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a04aa

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 40
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    goto :goto_0
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 58
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 66
    if-nez p3, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\ub85c\uadf8\uc778\uc744 \uc644\ub8cc\ud558\uc600\uc2b5\ub2c8\ub2e4"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mDialog:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->dismiss()V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->requestLogin(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Z)I

    .line 53
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mDialog:Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method
