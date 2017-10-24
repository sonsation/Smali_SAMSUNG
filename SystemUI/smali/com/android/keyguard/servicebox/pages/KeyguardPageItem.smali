.class public Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
.super Ljava/lang/Object;
.source "KeyguardPageItem.java"


# instance fields
.field private mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

.field private mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

.field private mPackageName:Ljava/lang/String;

.field private mPageRes:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;I)V
    .locals 1
    .param p1, "controller"    # Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pageRes"    # I

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;ILcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Ljava/lang/String;ILcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pageRes"    # I
    .param p4, "item"    # Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPackageName:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPageRes:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    .line 37
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    .line 38
    iput-object p2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPackageName:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPageRes:I

    .line 40
    iput-object p4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    .line 36
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageView(Landroid/content/Context;ZI)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBigView"    # Z
    .param p3, "initPageType"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 48
    iget v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPageRes:I

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "pageRes is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_0
    iget v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mPageRes:I

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 53
    .local v0, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-nez v0, :cond_1

    .line 54
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "page is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_1
    instance-of v1, v0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;

    if-eqz v1, :cond_3

    .line 58
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    if-nez v1, :cond_2

    .line 59
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "item is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, v0

    .line 61
    check-cast v1, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mItem:Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->setItem(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    .line 64
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-virtual {v0, v1, p2}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setServiceBoxController(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Z)V

    .line 65
    invoke-virtual {v0, p3, v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    .line 66
    return-object v0
.end method
