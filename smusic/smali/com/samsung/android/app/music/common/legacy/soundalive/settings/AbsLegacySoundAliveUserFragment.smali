.class public abstract Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;
.super Landroid/app/Fragment;
.source "AbsLegacySoundAliveUserFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;
    }
.end annotation


# static fields
.field private static final SAVED_INSTANCE_STATE_VALUE:Ljava/lang/String; = "saved_instance_state_value"


# instance fields
.field private mValue:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createView(Landroid/view/View;)V
.end method

.method protected final getBubble(Landroid/view/View;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    const v1, 0x7f12020f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    .line 67
    .local v0, "bubble":Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;
    const v1, 0x7f020144

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setBubbleBackgroundDrawable(I)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setBubbleFontSize(F)V

    .line 70
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 71
    return-object v0
.end method

.method public abstract getLayoutId()I
.end method

.method protected final getValue()[I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->mValue:[I

    return-object v0
.end method

.method public abstract loadValue()[I
.end method

.method public abstract notifyAudioPathChanged()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    const-string/jumbo v0, "saved_instance_state_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->mValue:[I

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->loadValue()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->mValue:[I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outSate"    # Landroid/os/Bundle;

    .prologue
    .line 47
    const-string/jumbo v0, "saved_instance_state_value"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->mValue:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->createView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public abstract resetValue()V
.end method
