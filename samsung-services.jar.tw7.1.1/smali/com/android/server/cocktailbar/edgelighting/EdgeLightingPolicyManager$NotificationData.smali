.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationData"
.end annotation


# static fields
.field static final KEY_COLOR:Ljava/lang/String; = "color"

.field static final KEY_COMPONENT:Ljava/lang/String; = "component"

.field static final KEY_COMPONENT_TIME:Ljava/lang/String; = "component_time"

.field static final KEY_CONTENT_INTENT:Ljava/lang/String; = "content_intent"

.field static final KEY_FLAG:Ljava/lang/String; = "flag"

.field static final KEY_GROUP_KEY:Ljava/lang/String; = "group_key"

.field static final KEY_IS_HEADUP:Ljava/lang/String; = "isHeadup"

.field static final KEY_IS_UPDATE:Ljava/lang/String; = "isUpdate"

.field static final KEY_NOTIFICATION_COLOR:Ljava/lang/String; = "notification_color"

.field static final KEY_NOTI_KEY:Ljava/lang/String; = "noti_key"

.field static final KEY_PRIORITY:Ljava/lang/String; = "priority"

.field static final KEY_SMALL_ICON:Ljava/lang/String; = "smallIcon"

.field static final KEY_SUB_TEXT:Ljava/lang/String; = "subText"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TICKER_TEXT:Ljava/lang/String; = "tickerText"

.field static final KEY_TITLE_TEXT:Ljava/lang/String; = "titleText"

.field static final KEY_USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field mNotificationInfo:Landroid/os/Bundle;

.field mTime:J


# direct methods
.method constructor <init>(JLandroid/os/Bundle;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "notificationInfo"    # Landroid/os/Bundle;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-wide p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    .line 186
    iput-object p3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 184
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "NotificationData time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-wide v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
