.class Lcom/android/server/wm/SamsungStartingWindowManager$1;
.super Landroid/view/WindowManagerInternal$AppTransitionListener;
.source "SamsungStartingWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungStartingWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SamsungStartingWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SamsungStartingWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/SamsungStartingWindowManager;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-direct {p0}, Landroid/view/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 256
    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    iget-object v3, v3, Lcom/android/server/wm/SamsungStartingWindowManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 257
    .local v2, "wtoken":Lcom/android/server/wm/WindowToken;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_2

    .line 258
    iget-object v0, v2, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 259
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-static {v3, v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->-wrap2(Lcom/android/server/wm/SamsungStartingWindowManager;I)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-static {v3, v5}, Lcom/android/server/wm/SamsungStartingWindowManager;->-wrap2(Lcom/android/server/wm/SamsungStartingWindowManager;I)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    .line 263
    .local v1, "data":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->capturedImage:Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData$CapturedImage;

    if-nez v3, :cond_1

    .line 264
    :cond_0
    return-void

    .line 267
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;->isTransitionFinished:Z

    .line 269
    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/SamsungStartingWindowManager;->canExecuteAutoCapture(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/SamsungStartingWindowManager;->executeAutoCapture(Lcom/android/server/wm/AppWindowToken;)Z

    .line 255
    .end local v0    # "appToken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "data":Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;
    :cond_2
    return-void
.end method

.method public onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 7
    .param p1, "openToken"    # Landroid/os/IBinder;
    .param p2, "closeToken"    # Landroid/os/IBinder;
    .param p3, "openAnimation"    # Landroid/view/animation/Animation;
    .param p4, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v6, 0x0

    .line 280
    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    iget-object v3, v3, Lcom/android/server/wm/SamsungStartingWindowManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 281
    .local v2, "wtoken":Lcom/android/server/wm/WindowToken;
    const-string v3, "SamsungStartingWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAppTransitionFinishedLocked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v3, v2, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_0

    .line 283
    iget-object v0, v2, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 284
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-static {v3, v6}, Lcom/android/server/wm/SamsungStartingWindowManager;->-wrap2(Lcom/android/server/wm/SamsungStartingWindowManager;I)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, p0, Lcom/android/server/wm/SamsungStartingWindowManager$1;->this$0:Lcom/android/server/wm/SamsungStartingWindowManager;

    invoke-static {v3, v6}, Lcom/android/server/wm/SamsungStartingWindowManager;->-wrap2(Lcom/android/server/wm/SamsungStartingWindowManager;I)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SamsungStartingWindowManager$CustomStartingWindowData;

    .line 279
    .end local v0    # "appToken":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    return-void
.end method
