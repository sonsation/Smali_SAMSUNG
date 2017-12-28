.class Lcom/android/launcher3/allapps/controller/AppsController$8;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Lcom/android/launcher3/allapps/AppsViewTypeDialog$OnViewTypeChagnedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->chooseViewType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 968
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$8;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 978
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/4 v1, 0x2

    .line 979
    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 980
    return-void
.end method

.method public onResult(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V
    .locals 2
    .param p1, "viewType"    # Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$8;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->setViewType(Lcom/android/launcher3/allapps/controller/AppsController$ViewType;)V

    .line 972
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/4 v1, 0x2

    .line 973
    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 974
    return-void
.end method
