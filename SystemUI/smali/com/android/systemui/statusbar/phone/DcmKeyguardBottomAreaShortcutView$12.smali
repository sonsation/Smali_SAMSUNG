.class Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$12;
.super Landroid/database/ContentObserver;
.source "DcmKeyguardBottomAreaShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$12;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .param p1, "selfChange"    # Z

    .prologue
    .line 772
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 773
    const/4 v6, 0x0

    .line 774
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 776
    .local v8, "missedcount":I
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "type="

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 777
    .local v9, "where":Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 778
    const-string/jumbo v0, " AND new=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$12;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 780
    invoke-static {}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get0()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 781
    const-string/jumbo v5, "date DESC"

    const/4 v4, 0x0

    .line 779
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 782
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 783
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 785
    if-ltz v8, :cond_0

    .line 786
    const-string/jumbo v0, "DcmKeyguardBottomAreaShortcutView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call db changed. count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$12;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v0, v8}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-wrap3(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    :cond_0
    if-eqz v6, :cond_1

    .line 795
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 771
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "where":Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    return-void

    .line 790
    :catch_0
    move-exception v7

    .line 791
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "DcmKeyguardBottomAreaShortcutView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeyguardBottomAreaView.ContentObserver.onChange(): ContentObserver Exception Occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 792
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 791
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 794
    if-eqz v6, :cond_1

    .line 795
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 793
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 794
    if-eqz v6, :cond_2

    .line 795
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 793
    :cond_2
    throw v0
.end method
