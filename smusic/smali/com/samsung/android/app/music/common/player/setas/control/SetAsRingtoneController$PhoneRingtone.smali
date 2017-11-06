.class final Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;
.super Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Ringtone;
.source "SetAsRingtoneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhoneRingtone"
.end annotation


# static fields
.field private static final PARAM_RECOMMEND_TIME:Ljava/lang/String; = "recommendation_time"

.field private static final PARAM_RECOMMEND_TIME2:Ljava/lang/String; = "recommendation_time_2"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Ringtone;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$1;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;ILandroid/content/Context;Landroid/net/Uri;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Landroid/net/Uri;
    .param p4, "x4"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;->setAsInternal(ILandroid/content/Context;Landroid/net/Uri;I)V

    return-void
.end method

.method private getActiveSimSlot(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/telephony/SubscriptionManagerCompat;->getActiveSimSlot(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private setAsInternal(ILandroid/content/Context;Landroid/net/Uri;I)V
    .locals 7
    .param p1, "simSlot"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "highlightOffset"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 143
    if-lez p4, :cond_2

    move v0, v3

    .line 144
    .local v0, "isRecommended":Z
    :goto_0
    const/4 v2, 0x1

    .line 145
    .local v2, "ringtoneType":I
    const-string/jumbo v1, "recommendation_time"

    .line 147
    .local v1, "paramRecommend":Ljava/lang/String;
    if-ne p1, v3, :cond_0

    .line 148
    sget v2, Lcom/samsung/android/app/music/support/android/media/RingtoneManagerCompat;->TYPE_RINGTONE_2:I

    .line 149
    const-string/jumbo v1, "recommendation_time_2"

    .line 152
    :cond_0
    invoke-static {p2, v2, p3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 153
    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, p4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone ringtone - setAs(sim : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - isRecommended: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", highlight-offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const v3, 0x7f0a00dc

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 162
    return-void

    .end local v0    # "isRecommended":Z
    .end local v1    # "paramRecommend":Ljava/lang/String;
    .end local v2    # "ringtoneType":I
    :cond_2
    move v0, v4

    .line 143
    goto :goto_0
.end method

.method private showSimChooserDialog(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "highlightOffset"    # I
    .param p4, "listener"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

    .prologue
    const/4 v2, 0x1

    .line 166
    invoke-static {}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showSimChooserDialog()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_NAME_1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, "strSim1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_NAME_2:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, "strSim2":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    aput-object v9, v8, v0

    aput-object v10, v8, v2

    .line 174
    .local v8, "items":[Ljava/lang/CharSequence;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    .local v7, "dialogSimChooser":Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0a00dd

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 177
    new-instance v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 189
    .local v6, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 190
    return-void
.end method


# virtual methods
.method public onSetAs(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "highlightOffset"    # I
    .param p4, "listener"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

    .prologue
    .line 121
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 122
    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/16 v1, -0x64

    .line 134
    :goto_0
    return v1

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;->getActiveSimSlot(Landroid/content/Context;)I

    move-result v0

    .line 128
    .local v0, "simSlot":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;->showSimChooserDialog(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V

    .line 130
    const/4 v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;->setAsInternal(ILandroid/content/Context;Landroid/net/Uri;I)V

    .line 134
    const/4 v1, 0x0

    goto :goto_0
.end method
