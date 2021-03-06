.class public Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;
.super Ljava/lang/Object;
.source "NaviBarRemoteViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;,
        Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;


# instance fields
.field mContext:Landroid/content/Context;

.field private mRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

.field private mViewList:[Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->mContext:Landroid/content/Context;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    .line 25
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->sInstance:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->sInstance:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    .line 33
    const-string/jumbo v0, "NaviBarRemoteViewManager"

    const-string/jumbo v1, "*** NaviBarRemoteViewManager create instance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->sInstance:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    return-object v0
.end method


# virtual methods
.method public getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRightRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 48
    const-string/jumbo v1, "NaviBarRemoteViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNavigationBarShortcut() requestClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-nez p3, :cond_3

    const/4 v0, 0x0

    .line 50
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    aget-object v1, v1, v0

    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->-set0(Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;Landroid/view/View;)Landroid/view/View;

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    aput-object v4, v1, v0

    .line 54
    :cond_0
    if-eqz p2, :cond_1

    .line 55
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->mViewList:[Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;-><init>(Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    aput-object v2, v1, v0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->mRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->mRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;->updateContainer()V

    .line 47
    :cond_2
    return-void

    .line 49
    .end local v0    # "index":I
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method protected setRemoteViewCallback(Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;)V
    .locals 3
    .param p1, "remoteViewCallback"    # Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

    .prologue
    .line 42
    const-string/jumbo v1, "NaviBarRemoteViewManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRemoteViewCallback() is set up to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "not null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->mRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

    .line 41
    return-void

    .line 42
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method
