.class Lcom/android/launcher3/gamehome/GameHomeManager$1;
.super Ljava/lang/Object;
.source "GameHomeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/gamehome/GameHomeManager;->bindGameAppsVisibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/gamehome/GameHomeManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/gamehome/GameHomeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/gamehome/GameHomeManager;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/launcher3/gamehome/GameHomeManager$1;->this$0:Lcom/android/launcher3/gamehome/GameHomeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/launcher3/gamehome/GameHomeManager$1;->this$0:Lcom/android/launcher3/gamehome/GameHomeManager;

    invoke-static {v0}, Lcom/android/launcher3/gamehome/GameHomeManager;->access$200(Lcom/android/launcher3/gamehome/GameHomeManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const v1, 0x7f0900b8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    return-void
.end method
