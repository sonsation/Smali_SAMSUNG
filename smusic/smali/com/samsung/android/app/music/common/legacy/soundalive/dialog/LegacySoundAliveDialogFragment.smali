.class public final Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;
.super Landroid/app/DialogFragment;
.source "LegacySoundAliveDialogFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;
    }
.end annotation


# static fields
.field private static final SAVED_INSTANCE_STATE_POSITION:Ljava/lang/String; = "saved_instance_state_position"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mAudioPathChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mPreference:Landroid/content/SharedPreferences;

.field private mSelectedPosition:I

.field private mSelectedPreset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 46
    iput v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mSelectedPreset:I

    .line 48
    iput v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mSelectedPosition:I

    .line 147
    new-instance v0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;-><init>(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mAudioPathChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    .prologue
    .line 33
    iget v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mSelectedPreset:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mSelectedPreset:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mAdapter:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    .prologue
    .line 33
    iget v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 129
    iget v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mSelectedPosition:I

    .line 130
    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->getPreset(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->setLegacySoundAlivePreset(I)V

    .line 131
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 54
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 55
    .local v1, "context":Landroid/content/Context;
    const-string v4, "music_service_pref"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mPreference:Landroid/content/SharedPreferences;

    .line 57
    iget-object v4, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "presetValues":[Ljava/lang/String;
    new-instance v4, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;

    const v5, 0x7f040203

    invoke-direct {v4, v0, v5, v3}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;-><init>(Landroid/app/Activity;I[Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mAdapter:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const-string/jumbo v4, "saved_instance_state_position"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mSelectedPosition:I

    .line 71
    :goto_0
    iget v4, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mSelectedPosition:I

    invoke-static {v4}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->getPreset(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mSelectedPreset:I

    .line 73
    iget-object v4, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mAudioPathChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void

    .line 66
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "sound_alive"

    sget v6, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->NORMAL:I

    .line 67
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 69
    .local v2, "preset":I
    invoke-static {v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->getPresetPosition(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mSelectedPosition:I

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->setStyle(II)V

    .line 80
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a04a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mAdapter:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;

    iget v2, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mSelectedPosition:I

    new-instance v3, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$3;-><init>(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)V

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0146

    new-instance v2, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$2;-><init>(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)V

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a008a

    new-instance v2, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$1;-><init>(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)V

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mAudioPathChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 118
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    const-string/jumbo v0, "saved_instance_state_position"

    iget v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-object v1, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSharedPreferenceChanged() -  sharedPreferences : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v1, "sound_alive"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const-string/jumbo v1, "sound_alive"

    sget v2, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->NORMAL:I

    .line 139
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 141
    .local v0, "preset":I
    sget-object v1, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSharedPreferenceChanged() - preset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 143
    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->getPresetPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 145
    .end local v0    # "preset":I
    :cond_0
    return-void
.end method
