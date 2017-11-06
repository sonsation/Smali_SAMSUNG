.class Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/SettingsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEntries:[Ljava/lang/String;

.field private mTextLargerFontResId:I

.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "resource"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p4, "entries"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    .line 194
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->mTextLargerFontResId:I

    .line 195
    iput-object p4, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->mEntries:[Ljava/lang/String;

    .line 196
    return-void
.end method


# virtual methods
.method getTextLargerFontSizeResId()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->mTextLargerFontResId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 201
    if-nez p2, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400b7

    .line 203
    invoke-virtual {v4, v5, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 205
    :cond_0
    const v4, 0x7f120130

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 206
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->mEntries:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const v0, 0x7f0d01b3

    .line 208
    .local v0, "fontSizeId":I
    iget v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->mTextLargerFontResId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 209
    iget v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->mTextLargerFontResId:I

    .line 211
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    .line 212
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 211
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 215
    const v4, 0x7f1200cb

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 216
    .local v1, "radioButton":Landroid/widget/RadioButton;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    .line 217
    invoke-static {v4}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->access$200(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->this$0:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    invoke-static {v5}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->access$000(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v4, v5

    if-ne p1, v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 218
    return-object p2
.end method

.method setTextLargerFontSize(I)V
    .locals 1
    .param p1, "fontSizeResId"    # I

    .prologue
    .line 222
    iget v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->mTextLargerFontResId:I

    if-ne v0, p1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->mTextLargerFontResId:I

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$SettingsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
