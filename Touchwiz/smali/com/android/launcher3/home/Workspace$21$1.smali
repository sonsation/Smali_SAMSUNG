.class Lcom/android/launcher3/home/Workspace$21$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace$21;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/Workspace$21;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/Workspace$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/home/Workspace$21;

    .prologue
    .line 2753
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$21$1;->this$1:Lcom/android/launcher3/home/Workspace$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$21$1;->this$1:Lcom/android/launcher3/home/Workspace$21;

    iget-object v0, v0, Lcom/android/launcher3/home/Workspace$21;->this$0:Lcom/android/launcher3/home/Workspace;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->access$1100(Lcom/android/launcher3/home/Workspace;ZZ)V

    .line 2756
    return-void
.end method
