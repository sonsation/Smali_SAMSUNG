.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 900
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    .line 903
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 902
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 905
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 904
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    .line 899
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 909
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set10(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;J)J

    .line 910
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v6

    .line 920
    .local v6, "mediaKey":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get42(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 921
    .local v1, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 922
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 923
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 924
    .local v2, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 926
    .local v5, "key":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get52(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v10

    iget-object v11, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildLocation(Landroid/view/View;)I

    move-result v10

    and-int/lit8 v10, v10, 0x5

    if-eqz v10, :cond_1

    const/4 v4, 0x1

    .line 927
    .local v4, "isVisible":Z
    :goto_1
    invoke-static {v5, v3, v4}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v8

    .line 928
    .local v8, "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get15(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 929
    .local v7, "previouslyVisible":Z
    if-eqz v4, :cond_2

    .line 931
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 932
    if-nez v7, :cond_0

    .line 933
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 922
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4    # "isVisible":Z
    .end local v7    # "previouslyVisible":Z
    .end local v8    # "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    :cond_1
    move v4, v9

    .line 926
    goto :goto_1

    .line 937
    .restart local v4    # "isVisible":Z
    .restart local v7    # "previouslyVisible":Z
    .restart local v8    # "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    :cond_2
    invoke-virtual {v8}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    goto :goto_2

    .line 940
    .end local v2    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v4    # "isVisible":Z
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "previouslyVisible":Z
    .end local v8    # "visObj":Lcom/android/internal/statusbar/NotificationVisibility;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get15(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 941
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 943
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 944
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    .line 943
    invoke-static {v9, v10, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap20(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 946
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get15(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap27(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/util/ArraySet;)V

    .line 947
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-get15(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 949
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-wrap27(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/util/ArraySet;)V

    .line 950
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 951
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 952
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 908
    return-void
.end method
