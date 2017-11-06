.class public Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;
.super Lcom/samsung/android/app/music/milk/dialog/MilkOKCheckedBoxDialog;
.source "MilkSpotlightStationAddedDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$SpotlightAddedDialogListener;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MilkSpotlightStationAddedDialog"


# instance fields
.field private mListener:Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$SpotlightAddedDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkOKCheckedBoxDialog;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;)Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$SpotlightAddedDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->mListener:Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$SpotlightAddedDialogListener;

    return-object v0
.end method

.method private setCheckBoxTint(Landroid/widget/CheckBox;I)V
    .locals 5
    .param p1, "checkBox"    # Landroid/widget/CheckBox;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 173
    new-array v1, v3, [[I

    new-array v2, v4, [I

    aput-object v2, v1, v4

    .line 174
    .local v1, "states":[[I
    new-array v0, v3, [I

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    aput v2, v0, v4

    .line 175
    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 176
    return-void
.end method

.method public static shouldShow(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    const-string v0, "com.samsung.radio.show_spotlight_station_added_dialog"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 143
    const v0, 0x7f0400e7

    return v0
.end method

.method protected getStyle()I
    .locals 1

    .prologue
    .line 169
    const v0, 0x7f0f035e

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->dismiss()V

    .line 49
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/dialog/MilkOKCheckedBoxDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v5

    .line 51
    .local v5, "ret":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->getTitle()Landroid/widget/TextView;

    move-result-object v8

    const v9, 0x7f0a03a4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->getMessage()Landroid/widget/TextView;

    move-result-object v7

    .line 55
    .local v7, "text":Landroid/widget/TextView;
    const v8, 0x7f0a03a2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 59
    .local v0, "checkbox":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getRootView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f1200c9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 60
    .local v1, "checkboxImg":Landroid/widget/ImageView;
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 62
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 64
    const v8, 0x7f020081

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->mCtx:Landroid/content/Context;

    const v9, 0x7f11015a

    .line 66
    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    .line 65
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 68
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getRootView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f1202ae

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 69
    .local v6, "rippleView":Landroid/view/View;
    const v8, 0x7f020250

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    new-instance v8, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$1;

    invoke-direct {v8, p0, v1}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;Landroid/widget/ImageView;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->getCheckboxText()Landroid/widget/TextView;

    move-result-object v2

    .line 92
    .local v2, "checkboxText":Landroid/widget/TextView;
    const v8, 0x7f0a00a3

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->getPositiveButton()Landroid/widget/Button;

    move-result-object v4

    .line 95
    .local v4, "posBtn":Landroid/widget/Button;
    const v8, 0x7f0a03a3

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(I)V

    .line 96
    new-instance v8, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$2;

    invoke-direct {v8, p0, v5}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$2;-><init>(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;Landroid/app/Dialog;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v8, 0x7f1202b7

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 119
    .local v3, "negativeBtn":Landroid/widget/Button;
    if-eqz v3, :cond_1

    .line 120
    new-instance v8, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$3;

    invoke-direct {v8, p0, v5}, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$3;-><init>(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;Landroid/app/Dialog;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_1
    return-object v5
.end method

.method public setSpotlightAddedDialogListener(Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$SpotlightAddedDialogListener;)V
    .locals 0
    .param p1, "spotlightAddedDialogListener"    # Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$SpotlightAddedDialogListener;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog;->mListener:Lcom/samsung/android/app/music/milk/dialog/MilkSpotlightStationAddedDialog$SpotlightAddedDialogListener;

    .line 149
    return-void
.end method
