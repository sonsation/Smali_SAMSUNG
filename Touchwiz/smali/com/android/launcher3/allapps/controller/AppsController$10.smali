.class Lcom/android/launcher3/allapps/controller/AppsController$10;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
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
    .line 1249
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$10;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$10;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$200(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->updateApplyCancelButton()V

    .line 1253
    return-void
.end method
