.class public abstract enum Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;
.super Ljava/lang/Enum;
.source "SetAsGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

.field public static final enum RecommendGroup:Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

.field private static final TAG:Ljava/lang/String;

.field public static final enum ToneGroup:Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$1;

    const-string v1, "RecommendGroup"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->RecommendGroup:Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$2;

    const-string v1, "ToneGroup"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->ToneGroup:Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

    sget-object v1, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->RecommendGroup:Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->ToneGroup:Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->$VALUES:[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAs-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

    .line 163
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->TAG:Ljava/lang/String;

    .line 162
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$1;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->$VALUES:[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;

    return-object v0
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;Landroid/view/View;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;
    .param p3, "viewRoot"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v10, -0x1

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->getItems()[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    move-result-object v2

    .line 148
    .local v2, "items":[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v0, v2, v6

    .line 149
    .local v0, "item":Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;
    iget v8, v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->text1ResId:I

    if-ne v8, v10, :cond_0

    move-object v3, v5

    .line 150
    .local v3, "strText1":Ljava/lang/String;
    :goto_1
    iget v8, v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->text2ResId:I

    if-ne v8, v10, :cond_1

    move-object v4, v5

    .line 152
    .local v4, "strText2":Ljava/lang/String;
    :goto_2
    iget v8, v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->id:I

    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;

    .line 153
    .local v1, "itemLayout":Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->getGroupName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ToneGroup"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 154
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->setVisibility(I)V

    .line 148
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "itemLayout":Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    .end local v3    # "strText1":Ljava/lang/String;
    .end local v4    # "strText2":Ljava/lang/String;
    :cond_0
    iget v8, v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->text1ResId:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 150
    .restart local v3    # "strText1":Ljava/lang/String;
    :cond_1
    iget v8, v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->text2ResId:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 156
    .restart local v1    # "itemLayout":Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    .restart local v4    # "strText2":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->access$200(Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p0, v1, v8, v3, v4}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;->initItemInternal(Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget v8, v0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;->id:I

    invoke-virtual {p2, v8, v1}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemGroup;->putItem(ILcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;)V

    goto :goto_3

    .line 160
    .end local v0    # "item":Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;
    .end local v1    # "itemLayout":Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    .end local v3    # "strText1":Ljava/lang/String;
    .end local v4    # "strText2":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public abstract getItems()[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method initItemInternal(Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "item"    # Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;
    .param p2, "iconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "strText1"    # Ljava/lang/String;
    .param p4, "strText2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const v3, 0x7f120578

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 98
    .local v0, "iconView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 99
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    :cond_2
    const v3, 0x7f120579

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 103
    .local v1, "text1":Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 104
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_3
    const v3, 0x7f12057a

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    .local v2, "text2":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    if-eqz p4, :cond_0

    .line 108
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
