.class abstract Lcom/android/server/policy/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field public customAction:I

.field public isKnoxCustom:Z

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field mLayoutId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 2
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4020
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 4021
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 4035
    iput p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    .line 4036
    iput p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 4037
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 4038
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 4040
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->init()V

    .line 4034
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 4044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4020
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 4021
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 4045
    iput p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    .line 4046
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 4047
    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 4048
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 4050
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->init()V

    .line 4044
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 4054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4020
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 4021
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 4055
    iput p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    .line 4056
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 4057
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 4058
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 4060
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->init()V

    .line 4054
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 1
    .param p1, "iconImageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "messageChar"    # Ljava/lang/String;
    .param p3, "action"    # I

    .prologue
    const/4 v0, 0x0

    .line 4022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4020
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 4021
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 4023
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 4024
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 4025
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    .line 4026
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 4027
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 4028
    iput p3, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 4030
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->init()V

    .line 4022
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 4065
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get47()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4066
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get28()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4069
    :cond_0
    const v0, 0x109006a

    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mLayoutId:I

    .line 4064
    :goto_0
    return-void

    .line 4067
    :cond_1
    const v0, 0x109006c

    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mLayoutId:I

    goto :goto_0

    .line 4072
    :cond_2
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get28()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4075
    :cond_3
    const v0, 0x109006b

    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mLayoutId:I

    goto :goto_0

    .line 4073
    :cond_4
    const v0, 0x109006d

    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mLayoutId:I

    goto :goto_0
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 4103
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get47()Z

    move-result v7

    if-nez v7, :cond_9

    .line 4104
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get28()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4107
    :cond_0
    const v7, 0x109006a

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 4117
    .local v6, "v":Landroid/view/View;
    :goto_0
    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4118
    .local v1, "icon":Landroid/widget/ImageView;
    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4119
    .local v3, "messageView":Landroid/widget/TextView;
    const v7, 0x10203d7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4120
    .local v5, "statusView":Landroid/widget/TextView;
    const v7, 0x10203d9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 4122
    .local v2, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isEnabled()Z

    move-result v0

    .line 4123
    .local v0, "enabled":Z
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 4125
    .local v4, "status":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 4126
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 4127
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4128
    if-nez v0, :cond_1

    const v7, -0x777778

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4135
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_d

    .line 4136
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4137
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4139
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4146
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 4147
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v7, :cond_e

    .line 4148
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4152
    :goto_3
    if-nez v0, :cond_3

    const v7, -0x777778

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4155
    :cond_3
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get47()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v2, :cond_5

    .line 4156
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    if-eqz v7, :cond_4

    .line 4157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4158
    const-string/jumbo v8, ", "

    .line 4157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10407e4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4161
    :cond_4
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4162
    if-eqz v0, :cond_f

    .line 4163
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 4164
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4171
    :cond_5
    :goto_4
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get69()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 4172
    if-eqz v3, :cond_6

    .line 4173
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get46()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4175
    :cond_6
    if-eqz v5, :cond_7

    .line 4176
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get58()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4188
    :cond_7
    :goto_5
    return-object v6

    .line 4105
    .end local v0    # "enabled":Z
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v3    # "messageView":Landroid/widget/TextView;
    .end local v4    # "status":Ljava/lang/String;
    .end local v5    # "statusView":Landroid/widget/TextView;
    .end local v6    # "v":Landroid/view/View;
    :cond_8
    const v7, 0x109006c

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 4110
    .end local v6    # "v":Landroid/view/View;
    :cond_9
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get28()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 4113
    :cond_a
    const v7, 0x109006b

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 4111
    .end local v6    # "v":Landroid/view/View;
    :cond_b
    const v7, 0x109006d

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 4130
    .restart local v0    # "enabled":Z
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v2    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v3    # "messageView":Landroid/widget/TextView;
    .restart local v4    # "status":Ljava/lang/String;
    .restart local v5    # "statusView":Landroid/widget/TextView;
    :cond_c
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get47()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4131
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 4141
    :cond_d
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v7, :cond_2

    .line 4142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    sget v9, Lcom/android/server/policy/GlobalActions;->mCurrentDensity:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4143
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 4150
    :cond_e
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 4166
    :cond_f
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 4167
    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_4

    .line 4178
    :cond_10
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get47()Z

    move-result v7

    if-nez v7, :cond_7

    .line 4179
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get31()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get28()Z

    move-result v7

    if-nez v7, :cond_7

    .line 4180
    if-eqz v3, :cond_11

    .line 4181
    const-string/jumbo v7, "#FF000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4183
    :cond_11
    if-eqz v5, :cond_7

    .line 4184
    const-string/jumbo v7, "#6B6F72"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4092
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 4093
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    return-object v0

    .line 4095
    :cond_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4086
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 4082
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method
