.class final Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;
.super Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerComponentAdapter;
.source "SoundPlayerPlayingItemText.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/IPlayingItemText;


# instance fields
.field private final mDisplayName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerComponentAdapter;-><init>()V

    .line 17
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->mDisplayName:Landroid/widget/TextView;

    .line 18
    return-void
.end method

.method private updateUi(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method


# virtual methods
.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->setTextScrollEnabled(Z)V

    .line 42
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->setTextScrollEnabled(Z)V

    .line 47
    return-void
.end method

.method public onMetaChanged(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 1
    .param p1, "soundPlayer"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->getCurrentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->updateUi(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setImportantForAccessibility(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 37
    return-void
.end method

.method public setTextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method

.method public setTextScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 27
    return-void
.end method
