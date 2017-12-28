.class Lcom/android/launcher3/home/Workspace$21;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace;->showRemoveScreenPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 2748
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$21;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 2751
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$21;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace$21;->this$0:Lcom/android/launcher3/home/Workspace;

    .line 2752
    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09017c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2751
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/home/Workspace$21$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/Workspace$21$1;-><init>(Lcom/android/launcher3/home/Workspace$21;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2758
    return-void
.end method
