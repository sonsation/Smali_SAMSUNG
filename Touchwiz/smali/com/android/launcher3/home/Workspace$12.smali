.class Lcom/android/launcher3/home/Workspace$12;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace;->addCustomLayout(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
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
    .line 1877
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$12;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1880
    const-string v0, "Launcher.Workspace"

    const-string v1, "onClick AlignTop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$12;->this$0:Lcom/android/launcher3/home/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->autoAlignItems(Z)V

    .line 1882
    return-void
.end method
