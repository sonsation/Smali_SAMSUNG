.class Lcom/samsung/android/app/music/milk/share/ShareItemImpl$1;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/ShareItemImpl;Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/share/ShareItemImpl;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$1;->this$0:Lcom/samsung/android/app/music/milk/share/ShareItemImpl;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$1;->val$editDialog:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "832"

    const-string v2, "8041"

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$1;->val$editDialog:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->dismiss()V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl$1;->this$0:Lcom/samsung/android/app/music/milk/share/ShareItemImpl;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 60
    return-void
.end method
