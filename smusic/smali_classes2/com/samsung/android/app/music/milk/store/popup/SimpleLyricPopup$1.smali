.class Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$1;
.super Ljava/lang/Object;
.source "SimpleLyricPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->onDialogCreated(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->dismiss()V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->access$000(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "969"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "969"

    const-string v2, "9711"

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method
