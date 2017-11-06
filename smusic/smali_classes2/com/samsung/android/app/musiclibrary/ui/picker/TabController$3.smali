.class Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;
.super Ljava/lang/Object;
.source "TabController.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$600(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$700(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 214
    .local v0, "tabCount":I
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$1000(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$800(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$900(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->access$1100(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;II)V

    .line 216
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$1200(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;Z)V

    .line 218
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$802(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;I)I

    .line 219
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$1300(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$1300(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$800(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;->onTabSelectedItemChanged(I)V

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$1500(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)Landroid/widget/TabHost;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->post(Ljava/lang/Runnable;)Z

    .line 231
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$1000(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$800(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$900(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->access$1100(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;II)V

    .line 232
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
