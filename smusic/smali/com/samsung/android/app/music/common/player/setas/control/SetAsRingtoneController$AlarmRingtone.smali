.class Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$AlarmRingtone;
.super Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Ringtone;
.source "SetAsRingtoneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlarmRingtone"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Ringtone;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$1;

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$AlarmRingtone;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetAs(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "highlightOffset"    # I
    .param p4, "listener"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

    .prologue
    const v9, 0x7f0a00d7

    const/4 v4, 0x0

    const/16 v5, -0xc8

    const/4 v3, 0x1

    .line 227
    if-lez p3, :cond_1

    move v2, v3

    .line 228
    .local v2, "isRecommended":Z
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "alarm://com.sec.android.app.clockpackage/alarmlist/"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 230
    .local v1, "i":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "highlight_offset"

    .line 232
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 231
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 232
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 234
    :cond_0
    const-string v6, "alarm_uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v6, "AlarmLaunchMode"

    const/4 v7, 0x3

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 238
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    invoke-static {}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alarm ringtone - setAs() - isRecommended: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", highlight-offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_1
    return v4

    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "isRecommended":Z
    :cond_1
    move v2, v4

    .line 227
    goto :goto_0

    .line 239
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v2    # "isRecommended":Z
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {p1, v9, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 242
    goto :goto_1

    .line 245
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    invoke-static {p1, v9, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 246
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 247
    goto :goto_1
.end method
