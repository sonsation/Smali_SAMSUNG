.class Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack$1;
.super Ljava/lang/Object;
.source "TabController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;-><init>(Landroid/content/Context;Landroid/widget/TabHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->access$1600(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 338
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 340
    :cond_0
    return-void
.end method
