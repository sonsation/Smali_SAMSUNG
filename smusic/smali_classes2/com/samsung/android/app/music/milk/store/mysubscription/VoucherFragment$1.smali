.class Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment$1;
.super Ljava/lang/Object;
.source "VoucherFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 83
    const-string v1, "VoucherFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onItemClick() | position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 88
    .local v0, "c":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;

    invoke-static {v1, v0, p3, p4}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;Landroid/database/Cursor;J)V

    .line 90
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "954"

    const-string v3, "9532"

    .line 91
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
