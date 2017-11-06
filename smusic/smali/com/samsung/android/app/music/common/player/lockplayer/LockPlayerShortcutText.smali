.class public final Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerShortcutText;
.super Ljava/lang/Object;
.source "LockPlayerShortcutText.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/IPlayingItemText;


# instance fields
.field private final mShortButton:Landroid/view/View;

.field private final mShortTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const v0, 0x7f120252

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerShortcutText;->mShortButton:Landroid/view/View;

    .line 19
    const v0, 0x7f120253

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerShortcutText;->mShortTextView:Landroid/widget/TextView;

    .line 20
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_REPLACE_SEC_BRAND_AS_GALAXY:Z

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerShortcutText;->mShortTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0483

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerShortcutText;->mShortTextView:Landroid/widget/TextView;

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerShortcutText;->mShortTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method


# virtual methods
.method public setImportantForAccessibility(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerShortcutText;->mShortTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 40
    return-void
.end method

.method public setTextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerShortcutText;->mShortButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method

.method public setTextScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerShortcutText;->mShortTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 30
    return-void
.end method
