.class Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
.super Ljava/lang/Object;
.source "SignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalClusterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneState"
.end annotation


# instance fields
.field private mIsMobileTypeIconWide:Z

.field private mLastMobileActivityId:I

.field private mLastMobileRoamingId:I

.field private mLastMobileStrengthId:I

.field private mLastMobileTypeId:I

.field private mMobile:Landroid/widget/ImageView;

.field private mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:I

.field private mMobileDark:Landroid/widget/ImageView;

.field private mMobileDataGroup:Landroid/view/ViewGroup;

.field private mMobileDescription:Ljava/lang/String;

.field private mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileRoamingId:I

.field private mMobileStrengthId:I

.field private mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field private mRoaming:Landroid/widget/ImageView;

.field private mRssiTypeIcon:Landroid/widget/ImageView;

.field private mRssiTypeIconId:I

.field private mSlotFocus:Landroid/widget/ImageView;

.field private mSlotFocusIconId:I

.field private mSlotFocusVisible:Z

.field private final mSubId:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivity:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mIsMobileTypeIconWide:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileActivityId:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRssiTypeIconId:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusIconId:I

    return p1
.end method

.method static synthetic -set14(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusVisible:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileRoamingId:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityId:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingId:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->maybeStopAnimatableDrawable(Landroid/widget/ImageView;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;ILandroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p2, "subId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1010
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    .line 980
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    .line 981
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    .line 982
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    .line 990
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileRoamingId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingId:I

    .line 991
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileActivityId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityId:I

    .line 997
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusVisible:Z

    .line 1002
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusIconId:I

    .line 1006
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRssiTypeIconId:I

    .line 1011
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1012
    const v2, 0x7f0400c1

    const/4 v3, 0x0

    .line 1011
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1013
    .local v0, "root":Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setViews(Landroid/view/ViewGroup;)V

    .line 1014
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    .line 1010
    return-void
.end method

.method private maybeStartAnimatableDrawable(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 1156
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1160
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v2, :cond_0

    .line 1161
    check-cast v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1164
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 1165
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 1166
    .local v0, "ad":Landroid/graphics/drawable/Animatable;
    instance-of v2, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 1167
    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 1169
    :cond_1
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1170
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 1155
    .end local v0    # "ad":Landroid/graphics/drawable/Animatable;
    :cond_2
    return-void
.end method

.method private maybeStopAnimatableDrawable(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 1139
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1143
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v2, :cond_0

    .line 1144
    check-cast v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1147
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1148
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 1149
    .local v0, "ad":Landroid/graphics/drawable/Animatable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1150
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1138
    .end local v0    # "ad":Landroid/graphics/drawable/Animatable;
    :cond_1
    return-void
.end method

.method private updateAnimatableIcon(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "resId"    # I

    .prologue
    .line 1133
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->maybeStopAnimatableDrawable(Landroid/widget/ImageView;)V

    .line 1134
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap1(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1135
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->maybeStartAnimatableDrawable(Landroid/widget/ImageView;)V

    .line 1132
    return-void
.end method


# virtual methods
.method public apply(Z)Z
    .locals 8
    .param p1, "isSecondaryIcon"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1059
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get0(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1099
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1114
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v4, "SignalClusterView"

    const-string/jumbo v5, "mobile: %s sig=%d typ=%d"

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    .line 1115
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "VISIBLE"

    :goto_1
    aput-object v1, v6, v2

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v6, v7

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v6, v7

    .line 1114
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    .line 1119
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_MPTCP:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get1(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1120
    :cond_2
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->DISPLAY_NETWORK_BOOSTER_ICON_AS_SIMPLE_TYPE:Z

    if-nez v1, :cond_e

    .line 1121
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-get2(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    .line 1122
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataGroup:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eqz v1, :cond_3

    if-eqz v0, :cond_f

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1129
    :goto_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return v1

    .line 1060
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    if-eq v1, v4, :cond_5

    .line 1061
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->updateAnimatableIcon(Landroid/widget/ImageView;I)V

    .line 1062
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->updateAnimatableIcon(Landroid/widget/ImageView;I)V

    .line 1063
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    .line 1066
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eq v1, v4, :cond_6

    .line 1067
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1068
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    .line 1072
    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileActivityId:I

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityId:I

    if-eq v1, v4, :cond_7

    .line 1073
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivity:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1074
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileActivityId:I

    .line 1076
    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileRoamingId:I

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingId:I

    if-eq v1, v4, :cond_8

    .line 1077
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1078
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingId:I

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileRoamingId:I

    .line 1083
    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusVisible:Z

    if-eqz v1, :cond_b

    .line 1084
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusIconId:I

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap1(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1085
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1091
    :goto_5
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_AT_CTC_CARD:Z

    if-eqz v1, :cond_a

    .line 1092
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRssiTypeIcon:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRssiTypeIconId:I

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap1(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1095
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1096
    const-string/jumbo v5, " "

    .line 1095
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1096
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    .line 1095
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1097
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 1087
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 1115
    :cond_c
    const-string/jumbo v1, "GONE"

    goto/16 :goto_1

    .line 1119
    :cond_d
    const/4 v0, 0x1

    .local v0, "shouldBeGone":Z
    goto/16 :goto_2

    .line 1120
    .end local v0    # "shouldBeGone":Z
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "shouldBeGone":Z
    goto/16 :goto_2

    .end local v0    # "shouldBeGone":Z
    :cond_f
    move v1, v2

    .line 1122
    goto/16 :goto_3

    .line 1124
    :cond_10
    const-string/jumbo v1, "SignalClusterView"

    const-string/jumbo v2, "mMobileDataGroup = null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1176
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1178
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    :cond_0
    return-void
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "tint"    # I
    .param p2, "darkIntensity"    # F
    .param p3, "tintArea"    # Landroid/graphics/Rect;

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1185
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivity:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivity:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1186
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1192
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1198
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_AT_CTC_CARD:Z

    if-eqz v0, :cond_1

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRssiTypeIcon:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap2(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1182
    :cond_1
    return-void
.end method

.method public setViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    .line 1019
    const v0, 0x7f1302a3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    .line 1020
    const v0, 0x7f1302a4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDark:Landroid/widget/ImageView;

    .line 1021
    const v0, 0x7f1302a0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    .line 1023
    const v0, 0x7f13029f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataGroup:Landroid/view/ViewGroup;

    .line 1024
    const v0, 0x7f1302a1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivity:Landroid/widget/ImageView;

    .line 1025
    const v0, 0x7f1302a5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Landroid/widget/ImageView;

    .line 1043
    const v0, 0x7f1302a6

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    .line 1044
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-eqz v0, :cond_3

    .line 1045
    const v0, 0x7f02068f

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusIconId:I

    .line 1046
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusIconId:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap1(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1053
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_AT_CTC_CARD:Z

    if-eqz v0, :cond_2

    .line 1054
    :cond_1
    const v0, 0x7f1302a7

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRssiTypeIcon:Landroid/widget/ImageView;

    .line 1017
    :cond_2
    return-void

    .line 1047
    :cond_3
    sget v0, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1048
    const v0, 0x7f02068d

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusIconId:I

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocus:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotFocusIconId:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap1(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    goto :goto_0
.end method
