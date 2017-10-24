.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "KeyguardUserSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p3, "kgu"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 265
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 266
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    .line 267
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 264
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v1

    .line 273
    .local v1, "item":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    instance-of v5, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    if-eqz v5, :cond_0

    .line 274
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    if-eqz v5, :cond_0

    :goto_0
    move-object v4, p2

    .line 279
    check-cast v4, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    .line 281
    .local v4, "v":Lcom/android/systemui/qs/tiles/UserDetailItemView;
    const v5, 0x7f1300dd

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 282
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0b00b3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "name":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    .line 286
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v5, :cond_1

    .line 287
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    const v6, 0x7f02014d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 297
    :goto_1
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setAvatarEnabled(Z)V

    .line 298
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    invoke-virtual {p2, v5}, Landroid/view/View;->setActivated(Z)V

    .line 299
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 300
    return-object p2

    .line 275
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "textView":Landroid/widget/TextView;
    .end local v4    # "v":Lcom/android/systemui/qs/tiles/UserDetailItemView;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 276
    const v6, 0x7f040084

    const/4 v7, 0x0

    .line 275
    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 277
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 290
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "textView":Landroid/widget/TextView;
    .restart local v4    # "v":Lcom/android/systemui/qs/tiles/UserDetailItemView;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 291
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto :goto_1

    .line 294
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v5, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->bind(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 306
    .local v0, "user":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v1, :cond_2

    .line 310
    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isSwitchToEnabled:Z

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 304
    :cond_1
    :goto_0
    return-void

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$Adapter;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)V

    goto :goto_0
.end method
