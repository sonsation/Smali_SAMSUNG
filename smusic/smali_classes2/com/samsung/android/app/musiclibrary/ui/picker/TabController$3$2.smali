.class Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3$2;
.super Ljava/lang/Object;
.source "TabController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->onTabChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3$2;->this$1:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3$2;->this$1:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$1500(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3$2;->this$1:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->access$1200(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;Z)V

    .line 237
    return-void
.end method
