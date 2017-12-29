.class Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;
.super Ljava/lang/Object;
.source "DualSoundRingtoneSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/DualSoundRingtoneSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 182
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get4(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get4(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/16 v3, 0x80

    .line 186
    const/4 v4, 0x1

    .line 185
    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-wrap0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 200
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get2(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 203
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get2(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/16 v3, 0x100

    .line 204
    const/4 v4, 0x2

    .line 203
    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-wrap0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 181
    :cond_1
    :goto_1
    return-void

    .line 192
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get4(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x1

    .line 193
    const/4 v4, 0x1

    .line 192
    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-wrap0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 210
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-get2(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x2

    .line 211
    const/4 v4, 0x2

    .line 210
    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->-wrap0(Lcom/samsung/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 212
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 205
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 187
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method
