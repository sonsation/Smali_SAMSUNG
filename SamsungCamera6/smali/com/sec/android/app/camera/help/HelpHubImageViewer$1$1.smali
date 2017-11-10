.class Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;
.super Ljava/lang/Object;
.source "HelpHubImageViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$108(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$100(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v1, v1, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    invoke-static {v1}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$200(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$102(Lcom/sec/android/app/camera/help/HelpHubImageViewer;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$300(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->mStopAnimation:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$400(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$500(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->setSlide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->mStopAnimation:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$700(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$600(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1$1;->this$1:Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/help/HelpHubImageViewer$1;->this$0:Lcom/sec/android/app/camera/help/HelpHubImageViewer;

    invoke-static {v0}, Lcom/sec/android/app/camera/help/HelpHubImageViewer;->access$500(Lcom/sec/android/app/camera/help/HelpHubImageViewer;)V

    goto :goto_0
.end method
