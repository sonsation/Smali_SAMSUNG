.class public Lcom/samsung/android/sdk/ppmt/content/PopupCard;
.super Lcom/samsung/android/sdk/ppmt/content/Card;
.source "PopupCard.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroudColor:I

.field private mBodyText:Ljava/lang/CharSequence;

.field private mBottomColor:I

.field private mButton1Actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;"
        }
    .end annotation
.end field

.field private mButton1Text:Ljava/lang/String;

.field private mButton2Actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;"
        }
    .end annotation
.end field

.field private mButton2Text:Ljava/lang/String;

.field private mButtonAlign:I

.field private mButtonTextColor:I

.field private mIsBottomVisible:Z

.field private mIsCloseButtonVisible:Z

.field private mIsDisturbOn:Z

.field private mLineColor:I

.field private mMainImagePath:Ljava/lang/String;

.field private mTemplateType:I

.field private mTextColor:I

.field private mWebUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "msgType"    # Ljava/lang/String;
    .param p3, "marketingType"    # Ljava/lang/String;
    .param p4, "displayId"    # I
    .param p5, "targetid"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/ppmt/content/Card;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getBackgroudColor()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mBackgroudColor:I

    return v0
.end method

.method public getBodyText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mBodyText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBottomColor()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mBottomColor:I

    return v0
.end method

.method public getButton1Actions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mButton1Actions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getButton1Text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mButton1Text:Ljava/lang/String;

    return-object v0
.end method

.method public getButton2Actions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mButton2Actions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getButton2Text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mButton2Text:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonAlign()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mButtonAlign:I

    return v0
.end method

.method public getButtonTextColor()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mButtonTextColor:I

    return v0
.end method

.method public getDisplayMeta()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 189
    invoke-super {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getDisplayMeta()Landroid/os/Bundle;

    move-result-object v1

    .line 190
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "template_type"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getTemplateType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    const-string v3, "bottom_visible"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->isBottomVisible()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    const-string v3, "close_visible"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->isCloseButtonVisible()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    const-string v3, "btn_align"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getButtonAlign()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    const-string v3, "color_bg"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getBackgroudColor()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    const-string v3, "color_bottom"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getBottomColor()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    const-string v3, "color_btn_text"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getButtonTextColor()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v3, "color_body"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getTextColor()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    const-string v3, "color_line"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getLineColor()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    const-string v3, "body_text"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getBodyText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 200
    const-string/jumbo v3, "web"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getWebUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v3, "btn1_text"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getButton1Text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v3, "btn2_text"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getButton2Text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v3, "img_main"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getMainImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getButton1Actions()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 205
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getButton1Actions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getButton1Actions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;

    .line 207
    .local v0, "action":Lcom/samsung/android/sdk/ppmt/content/CardAction;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btn1_action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "action":Lcom/samsung/android/sdk/ppmt/content/CardAction;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getButton2Actions()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 211
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getButton2Actions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getButton2Actions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;

    .line 213
    .restart local v0    # "action":Lcom/samsung/android/sdk/ppmt/content/CardAction;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btn2_action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 216
    .end local v0    # "action":Lcom/samsung/android/sdk/ppmt/content/CardAction;
    .end local v2    # "i":I
    :cond_1
    const-string v3, "disturb"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->isDisturbOn()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    return-object v1
.end method

.method public getLineColor()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mLineColor:I

    return v0
.end method

.method public getMainImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mMainImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateType()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mTemplateType:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mTextColor:I

    return v0
.end method

.method public getWebUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mWebUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isBottomVisible()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mIsBottomVisible:Z

    return v0
.end method

.method public isCloseButtonVisible()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mIsCloseButtonVisible:Z

    return v0
.end method

.method public isDisturbOn()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mIsDisturbOn:Z

    return v0
.end method

.method public isSupportType()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-super {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->isSupportType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget v1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mTemplateType:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mTemplateType:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 48
    :goto_0
    return v0

    .line 47
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not supported type. type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mTemplateType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroudColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mBackgroudColor:I

    .line 97
    return-void
.end method

.method public setBodyText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mBodyText:Ljava/lang/CharSequence;

    .line 137
    return-void
.end method

.method public setBottomColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mBottomColor:I

    .line 105
    return-void
.end method

.method public setButton1Actions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/content/CardAction;>;"
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mButton1Actions:Ljava/util/ArrayList;

    .line 177
    return-void
.end method

.method public setButton1Text(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mButton1Text:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setButton2Actions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ppmt/content/CardAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdk/ppmt/content/CardAction;>;"
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mButton2Actions:Ljava/util/ArrayList;

    .line 185
    return-void
.end method

.method public setButton2Text(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mButton2Text:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setButtonAlign(I)V
    .locals 0
    .param p1, "align"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mButtonAlign:I

    .line 81
    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mButtonTextColor:I

    .line 121
    return-void
.end method

.method public setIsBottomVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mIsBottomVisible:Z

    .line 65
    return-void
.end method

.method public setIsCloseButtonVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mIsCloseButtonVisible:Z

    .line 73
    return-void
.end method

.method public setIsDisturbOn(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mIsDisturbOn:Z

    .line 89
    return-void
.end method

.method public setLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mLineColor:I

    .line 129
    return-void
.end method

.method public setMainImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mMainImagePath:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setTemplateType(I)V
    .locals 0
    .param p1, "templateType"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mTemplateType:I

    .line 57
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mTextColor:I

    .line 113
    return-void
.end method

.method public setWebUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;->mWebUrl:Ljava/lang/String;

    .line 161
    return-void
.end method
