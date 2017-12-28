.class Lcom/android/launcher3/AboutPageActivity$3;
.super Ljava/lang/Object;
.source "AboutPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/AboutPageActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/AboutPageActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AboutPageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/AboutPageActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/launcher3/AboutPageActivity$3;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$3;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$200(Lcom/android/launcher3/AboutPageActivity;)Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$3;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$200(Lcom/android/launcher3/AboutPageActivity;)Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->cancel(Z)Z

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$3;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0, v3}, Lcom/android/launcher3/AboutPageActivity;->access$202(Lcom/android/launcher3/AboutPageActivity;Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;)Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$3;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$300(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$3;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$400(Lcom/android/launcher3/AboutPageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$3;->this$0:Lcom/android/launcher3/AboutPageActivity;

    new-instance v1, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

    iget-object v2, p0, Lcom/android/launcher3/AboutPageActivity$3;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;-><init>(Lcom/android/launcher3/AboutPageActivity;Lcom/android/launcher3/AboutPageActivity$1;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/AboutPageActivity;->access$202(Lcom/android/launcher3/AboutPageActivity;Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;)Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/AboutPageActivity$3;->this$0:Lcom/android/launcher3/AboutPageActivity;

    invoke-static {v0}, Lcom/android/launcher3/AboutPageActivity;->access$200(Lcom/android/launcher3/AboutPageActivity;)Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AboutPageActivity$UpdateCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 180
    return-void
.end method
