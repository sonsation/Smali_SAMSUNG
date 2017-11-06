.class Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference$1;
.super Ljava/lang/Object;
.source "CacheSizePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference$1;->this$0:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference$1;->this$0:Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/settings/preference/CacheSizePreference;->clearCache()V

    .line 81
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "401"

    const-string v2, "5212"

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method
