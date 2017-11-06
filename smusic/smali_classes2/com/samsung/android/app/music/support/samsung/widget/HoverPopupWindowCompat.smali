.class public Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;
.super Ljava/lang/Object;
.source "HoverPopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;,
        Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;
    }
.end annotation


# static fields
.field public static final TYPE_NONE:I

.field public static final TYPE_TOOLTIP:I

.field public static final TYPE_USER_CUSTOM:I

.field public static final TYPE_WIDGET_DEFAULT:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    :cond_0
    sput v1, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->TYPE_NONE:I

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    :cond_1
    sput v2, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->TYPE_TOOLTIP:I

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    :cond_2
    sput v4, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->TYPE_USER_CUSTOM:I

    .line 25
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    :cond_3
    sput v3, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->TYPE_WIDGET_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 175
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 176
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    .line 177
    .local v0, "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 183
    .end local v0    # "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->dismiss(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static isHoveringUI(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    if-eqz p0, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 221
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 222
    sget-object v1, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->FEATURE_HOVERING_UI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 225
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isShowing(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 186
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 187
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    .line 188
    .local v0, "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v1

    .line 193
    .end local v0    # "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :goto_0
    return v1

    .line 191
    .restart local v0    # "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 193
    .end local v0    # "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->isShowing(Landroid/view/View;)Z

    move-result v1

    goto :goto_0
.end method

.method public static setContent(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p0, "sourceView"    # Landroid/view/View;
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 142
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 143
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    .line 144
    .local v0, "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Landroid/view/View;)V

    .line 150
    .end local v0    # "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setContent(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public static setContent(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "sourceView"    # Landroid/view/View;
    .param p1, "contentText"    # Ljava/lang/CharSequence;

    .prologue
    .line 153
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 154
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    .line 155
    .local v0, "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 161
    .end local v0    # "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setContent(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setHoverDetectTime(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "time"    # I

    .prologue
    .line 131
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 132
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    .line 133
    .local v0, "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoverDetectTime(I)V

    .line 139
    .end local v0    # "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setHoverDetectTime(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static setHoverPopupListener(Landroid/view/View;Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;

    .prologue
    .line 198
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    .line 200
    .local v0, "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    new-instance v1, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$1;-><init>(Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOnSetContentViewListener(Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;)V

    .line 216
    .end local v0    # "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$2;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$2;-><init>(Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;)V

    invoke-static {p0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setHoverPopupListener(Landroid/view/View;Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;)V

    goto :goto_0
.end method

.method public static setHoverPopupType(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # I

    .prologue
    .line 101
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setHoverPopupType(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static setPopupGravity(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "gravity"    # I

    .prologue
    .line 109
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 110
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    .line 111
    .local v0, "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    .line 117
    .end local v0    # "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setPopupGravity(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static setPopupOffset(Landroid/view/View;II)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 120
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 121
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    .line 122
    .local v0, "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    .line 128
    .end local v0    # "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setPopupOffset(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public static show(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 164
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 165
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    .line 166
    .local v0, "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    .line 172
    .end local v0    # "hpw":Lcom/samsung/android/widget/SemHoverPopupWindow;
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->show(Landroid/view/View;)V

    goto :goto_0
.end method
