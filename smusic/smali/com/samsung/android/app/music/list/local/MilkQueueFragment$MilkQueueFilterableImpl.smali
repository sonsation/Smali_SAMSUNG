.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MilkQueueFilterableImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl$OnChangedOptionListener;
    }
.end annotation


# static fields
.field private static final LOCAL_ONLY_POSITION:I = 0x4


# instance fields
.field private final mListener:Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl$OnChangedOptionListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl$OnChangedOptionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl$OnChangedOptionListener;

    .prologue
    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 975
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl;->mListener:Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl$OnChangedOptionListener;

    .line 976
    return-void
.end method


# virtual methods
.method public getFilterOptionFromSettings(Landroid/content/SharedPreferences;)I
    .locals 2
    .param p1, "uiPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 987
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl;->mListener:Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl$OnChangedOptionListener;

    if-nez v1, :cond_0

    .line 988
    const/4 v1, 0x4

    .line 991
    :goto_0
    return v1

    .line 990
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl;->mListener:Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl$OnChangedOptionListener;

    invoke-interface {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl$OnChangedOptionListener;->getSortMode()I

    move-result v0

    .line 991
    .local v0, "sortMode":I
    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$1400(I)I

    move-result v1

    goto :goto_0
.end method

.method public getFilterOptions()[I
    .locals 1

    .prologue
    .line 980
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x4
        0x0
        0x2
        0x5
        0x6
    .end array-data
.end method

.method public saveFilterOptionToSettings(Landroid/content/SharedPreferences;I)V
    .locals 5
    .param p1, "uiPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "filterBy"    # I

    .prologue
    .line 998
    packed-switch p2, :pswitch_data_0

    .line 1018
    :pswitch_0
    const/4 v1, 0x1

    .line 1019
    .local v1, "sortMode":I
    const-string v0, "Custom order"

    .line 1022
    .local v0, "eventDetail":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl;->mListener:Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl$OnChangedOptionListener;

    if-eqz v2, :cond_0

    .line 1023
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl;->mListener:Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl$OnChangedOptionListener;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$MilkQueueFilterableImpl$OnChangedOptionListener;->onChangedOption(I)V

    .line 1025
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "303"

    const-string v4, "4342"

    .line 1026
    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    return-void

    .line 1000
    .end local v0    # "eventDetail":Ljava/lang/String;
    .end local v1    # "sortMode":I
    :pswitch_1
    const/4 v1, 0x2

    .line 1001
    .restart local v1    # "sortMode":I
    const-string v0, "Date added"

    .line 1002
    .restart local v0    # "eventDetail":Ljava/lang/String;
    goto :goto_0

    .line 1004
    .end local v0    # "eventDetail":Ljava/lang/String;
    .end local v1    # "sortMode":I
    :pswitch_2
    const/4 v1, 0x3

    .line 1005
    .restart local v1    # "sortMode":I
    const-string v0, "Track title"

    .line 1006
    .restart local v0    # "eventDetail":Ljava/lang/String;
    goto :goto_0

    .line 1008
    .end local v0    # "eventDetail":Ljava/lang/String;
    .end local v1    # "sortMode":I
    :pswitch_3
    const/4 v1, 0x4

    .line 1009
    .restart local v1    # "sortMode":I
    const-string v0, "Artist name"

    .line 1010
    .restart local v0    # "eventDetail":Ljava/lang/String;
    goto :goto_0

    .line 1012
    .end local v0    # "eventDetail":Ljava/lang/String;
    .end local v1    # "sortMode":I
    :pswitch_4
    const/4 v1, 0x5

    .line 1013
    .restart local v1    # "sortMode":I
    const-string v0, "Device"

    .line 1014
    .restart local v0    # "eventDetail":Ljava/lang/String;
    goto :goto_0

    .line 998
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
