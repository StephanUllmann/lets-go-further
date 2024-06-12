package data

import (
	"strconv"
	"strings"
)

type Genres []string

func (g Genres) MarshalJSON() ([]byte, error) {
	jsonVal := strings.Join(g, "--><--")

	quotedVal := strconv.Quote(jsonVal)

	return []byte(quotedVal), nil
}
