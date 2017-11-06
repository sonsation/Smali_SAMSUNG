.class final Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$CallerRingtone;
.super Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Ringtone;
.source "SetAsRingtoneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallerRingtone"
.end annotation


# static fields
.field private static final EXTRA_URI:Ljava/lang/String; = "ringtone_uri"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Ringtone;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$1;

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$CallerRingtone;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetAs(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "highlightOffset"    # I
    .param p4, "listener"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    if-lez p3, :cond_1

    move v1, v2

    .line 201
    .local v1, "isRecommended":Z
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "i":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "highlight_offset"

    .line 204
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 204
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 207
    :cond_0
    const-string/jumbo v4, "ringtone_uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string/jumbo v4, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 211
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 216
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caller ringtone - setAs() - isRecommended: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", highlight-offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v3

    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "isRecommended":Z
    :cond_1
    move v1, v3

    .line 200
    goto :goto_0

    .line 213
    .restart local v0    # "i":Landroid/content/Intent;
    .restart local v1    # "isRecommended":Z
    :cond_2
    const v4, 0x7f0a00d7

    invoke-static {p1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 214
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
