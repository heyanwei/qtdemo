package graph

// This file will be automatically regenerated based on the schema, any resolver implementations
// will be copied through when generating and any unknown code will be moved to the end.

import (
	"context"
	"log"
	"user-service/user-api/graphql/graph/generated"
	"user-service/user-api/graphql/graph/model"

	merrors "github.com/micro/go-micro/v2/errors"
)

func (r *mutationResolver) Login(ctx context.Context, name string, password string) (*model.LoginResult, error) {
	log.Println("Login: name- ", name, ", password- ", password)
	if name != "root" {
		return nil, merrors.Forbidden("go.micro.srv.user", "no such user name")
	}

	if password != "123456" {
		return nil, merrors.Forbidden("go.micro.srv.user", "password is wrong")
	}

	var result model.LoginResult
	result.Result = true
	result.Token = "13560000000001"
	return &result, nil
}

func (r *mutationResolver) Register(ctx context.Context, name string, password string) (bool, error) {
	log.Println("Register: name- ", name, ", password- ", password)
	return true, nil
}

func (r *queryResolver) GetUsers(ctx context.Context, filter *model.UserFilter, page *int, perPage *int) (*model.Users, error) {
	log.Println("GetUsers")

	return nil, nil
}

// Mutation returns generated.MutationResolver implementation.
func (r *Resolver) Mutation() generated.MutationResolver { return &mutationResolver{r} }

// Query returns generated.QueryResolver implementation.
func (r *Resolver) Query() generated.QueryResolver { return &queryResolver{r} }

type mutationResolver struct{ *Resolver }
type queryResolver struct{ *Resolver }
