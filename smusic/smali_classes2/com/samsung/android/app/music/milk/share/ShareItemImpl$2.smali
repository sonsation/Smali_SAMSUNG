.class Lcom/samsung/android/app/music/milk/share/ShareItemImpl$2;
.super Ljava/lang/Object;
.source "ShareItemImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->showEditDialog(Lcom/samsung/android/app/music/common/model/share/ShareData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/ShareItemImpl;

.field final synthetic val$editDialog:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

.field final synthetic val$shareData:Lcom/samsung/android/app/music/common/model/share/ShareData;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/ShareItemImpl;Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/share/ShareItemImpl;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$2;->this$0:Lcom/samsung/android/app/music/milk/share/ShareItemImpl;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$2;->val$editDialog:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$2;->val$shareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$2;->val$editDialog:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->getEditText()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "editedMsg":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "832"

    const-string v3, "8042"

    .line 68
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$2;->val$shareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setEditText(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$2;->this$0:Lcom/samsung/android/app/music/milk/share/ShareItemImpl;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$2;->val$shareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->onSendButtonClicked(Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$2;->val$editDialog:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->dismiss()V

    .line 75
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$2;->this$0:Lcom/samsung/android/app/music/milk/share/ShareItemImpl;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 76
    return-void
.end method
